import 'dart:io';

import 'package:mason/mason.dart';

import '../../../cli/cli.dart';

Future<void> run(HookContext context) async {
  await createApp(context);
}

Future<void> createApp(HookContext context) async {
  final currentDir = Directory.current;
  final root = context.vars['root'].toString().toLowerCase();
  final appName = context.vars['app_name'].toString().toLowerCase();
  final isInstalled = await VeryGood.installed(logger: context.logger);

  if (isInstalled) {
    final formatProgress = context.logger.progress('Creating app ...');
    await VeryGood.createApp(
      logger: context.logger,
      appName: appName,
      workingDirectory: '${currentDir.path}/$root',
    );
    formatProgress.complete();
  }
}
