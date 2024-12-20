part of 'cli.dart';

/// Very Good CLI
class VeryGood {
  /// Determine whether very good is installed.
  static Future<bool> installed({
    required Logger logger,
  }) async {
    try {
      await _Cmd.run('very_good', ['--version'], logger: logger);
      return true;
    } catch (_) {
      return false;
    }
  }

  static Future<void> createApp({
    required Logger logger,
    required String appName,
    String? workingDirectory,
  }) async {
    await _Cmd.run(
      'very_good',
      [
        'create',
        'flutter_app',
        'app',
        '--org-name',
        'com.anvil',
        '--application-id',
        'com.anvil.${appName}',
      ],
      logger: logger,
      workingDirectory: workingDirectory,
    );
  }
}
