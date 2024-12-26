import 'dart:io';

// import 'package:glob/glob.dart';
import 'package:mason/mason.dart';
import 'package:path/path.dart' as p;

part 'dart_cli.dart';

part 'very_good_cli.dart';

/// Thrown when `flutter pub get` is executed without a `pubspec.yaml`.
class PubspecNotFound implements Exception {}

/// Class for running commands via command line.
class _Cmd {
  /// Runs the specified [cmd] with the provided [args].
  static Future<ProcessResult> run(
    String cmd,
    List<String> args, {
    required Logger logger,
    bool throwOnError = true,
    String? workingDirectory,
  }) async {
    logger.detail('Running: $cmd with $args');
    final runProcess = Process.run;
    final result = await runProcess(
      cmd,
      args,
      workingDirectory: workingDirectory,
      runInShell: true,
    );
    logger
      ..detail('stdout:\n${result.stdout}')
      ..detail('stderr:\n${result.stderr}');
    if (throwOnError) {
      _throwIfProcessFailed(result, cmd, args);
    }
    return result;
  }

  static Iterable<Future<T>> runWhere<T>({
    required Future<T> Function(FileSystemEntity) run,
    required bool Function(FileSystemEntity) where,
    String cwd = '.',
  }) {
    final directories =
        Directory(cwd).listSync(recursive: true).where(where).toList()
          ..sort((a, b) {
            /// Linux and macOS have different sorting behaviors
            /// regarding the order that the list of folders/files are returned.
            /// To ensure consistency across platforms, we apply a
            /// uniform sorting logic.
            final aSplit = p.split(a.path);
            final bSplit = p.split(b.path);
            final aLevel = aSplit.length;
            final bLevel = bSplit.length;

            if (aLevel == bLevel) {
              return aSplit.last.compareTo(bSplit.last);
            } else {
              return aLevel.compareTo(bLevel);
            }
          });

    return directories.map(run);
  }

  static void _throwIfProcessFailed(
    ProcessResult pr,
    String process,
    List<String> args,
  ) {
    if (pr.exitCode != 0) {
      final values = {
        'Standard out': pr.stdout.toString().trim(),
        'Standard error': pr.stderr.toString().trim(),
      }..removeWhere((key, value) => value.isEmpty);
      var message = 'Unknown error';
      if (values.isNotEmpty) {
        message = values.entries.map((e) => '${e.key}\n${e.value}').join('\n');
      }

      throw ProcessException(process, args, message, pr.exitCode);
    }
  }
}

const _ignoredDirectories = {
  'ios',
  'android',
  'windows',
  'linux',
  'macos',
  '.symlinks',
  '.plugin_symlinks',
  '.dart_tool',
  'build',
  '.fvm',
};

bool _isPubspec(FileSystemEntity entity) {
  if (entity is! File) return false;
  return p.basename(entity.path) == 'pubspec.yaml';
}

// The extension is intended to be unnamed, but it's not possible due to
// an issue with Dart SDK 2.18.0.
//
// Once the min Dart SDK is bumped, this extension can be unnamed again.
// extension _Set on Set<String> {
//   bool excludes(FileSystemEntity entity) {
//     final segments = p.split(entity.path).toSet();
//     if (segments.intersection(_ignoredDirectories).isNotEmpty) return true;
//     if (segments.intersection(this).isNotEmpty) return true;

//     for (final value in this) {
//       if (value.isNotEmpty && Glob(value).matches(entity.path)) {
//         return true;
//       }
//     }

//     return false;
//   }
// }
