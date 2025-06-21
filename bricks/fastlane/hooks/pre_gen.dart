import 'package:mason/mason.dart';

Future<void> run(HookContext context) async {
  final envs = context.vars['envs'];

  if (envs is List) {
    context.logger.info('Environment variables:');
    for (final item in envs) {
      context.logger.info('• $item');
    }
  } else {
    context.logger.err('"envs" is not a list.: $envs');
  }

  final platform = context.vars['platform'].toString().toLowerCase();
  final isBoth = platform == 'both';

  final isAndroid = isBoth || platform == 'android';
  final isIOS = isBoth || platform == 'ios';

  final confirmed = context.logger.confirm(
    'Are you sure you have run the command in the folder containing the ${isBoth ? 'ios' : isAndroid ? 'android' : 'ios'} folder?',
    defaultValue: true,
  );
  if (confirmed) {
    if (isBoth) {
      _iOSConfiguration(context);
      _androidConfiguration(context);
    } else if (isAndroid) {
      _androidConfiguration(context);
    } else if (isIOS) {
      _iOSConfiguration(context);
    }

    context.vars = {
      ...context.vars,
      'is_ios': isBoth || isIOS,
      'is_android': isBoth || isAndroid,
    };
  }
}

/// The iOS configuration requires the following variables:
///
/// APPLE_ID
///
/// TEAM_ID
///
/// ITC_TEAM_ID
///
/// APPSTORE_KEY_ID
///
/// APPSTORE_ISSUER_ID
///
/// P8_FILE_PATH
///
/// APP_ID
void _iOSConfiguration(HookContext context) {
  context.logger.info("Starting iOS configuration");
  final appleId = context.logger.prompt(
    'Provide the apple id (aka apple developer account email)',
  );
  final teamId = context.logger.prompt(
    'Provide the apple team id',
  );
  final itcTeamId = context.logger.prompt(
    'Provide the apple itc team id',
  );
  final appStoreKeyId = context.logger.prompt(
    'Provide the app store key id',
  );
  final appStoreIssuerId = context.logger.prompt(
    'Provide the app store issuer id',
  );
  final apiKeyFilePath = context.logger.prompt(
    'Provide the apple api key file path',
  );

  final gitRepoUrl = context.logger.prompt(
    'Provide the URL of the git repository where the match certificates are stored (optional)',
    defaultValue: '',
  );

  final matchGitBasicAuthorization = context.logger.prompt(
    'Provide the the access token for the git repository where the match certificates are stored (optional)',
    defaultValue: '',
  );

  final matchKeychainPassword = context.logger.prompt(
    'Provide the password for the keychain used by match (optional)',
    defaultValue: '',
  );

  final appId = context.logger.prompt(
    'Provide the apple app identifier. Do not include the flavor (for example com.example.app)',
  );
  context.logger.info("End of iOS configuration");

  context.vars = {
    ...context.vars,
    'apple_id': appleId,
    'team_id': teamId,
    'itc_team_id': itcTeamId,
    'app_store_key_id': appStoreKeyId,
    'app_store_issuer_id': appStoreIssuerId,
    'api_key_file_path': apiKeyFilePath,
    'app_id': appId,
    'git_repo_url': gitRepoUrl,
    'match_git_basic_authorization': matchGitBasicAuthorization,
    'match_keychain_password': matchKeychainPassword,
    'is_git_repo_set': gitRepoUrl.isNotEmpty,
    'is_match_git_basic_authorization_set': matchGitBasicAuthorization.isNotEmpty,
    'is_match_keychain_password_set': matchKeychainPassword.isNotEmpty,
  };
}

/// The Android configuration requires the following variables:
///
/// JSON_KEY_FILE_PATH
///
/// PACKAGE_NAME
///
void _androidConfiguration(HookContext context) {
  context.logger.info("Starting Android configuration");
  final jsonKeyFilePath = context.logger.prompt(
    'Provide the play console json key file path',
  );
  final packageName = context.logger.prompt(
    'Provide the android package name. Do not include the flavor (for example com.example.app)',
  );
  context.logger.info("End of Android configuration");
  context.vars = {
    ...context.vars,
    'json_key_file_path': jsonKeyFilePath,
    'package_name': packageName,
  };
}
