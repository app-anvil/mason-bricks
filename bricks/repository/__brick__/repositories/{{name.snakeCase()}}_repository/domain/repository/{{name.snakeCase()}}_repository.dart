import 'package:a2f_sdk/a2f_sdk.dart';

import '../../{{name.snakeCase()}}_repository.dart';

part '_{{name.snakeCase()}}_repository_impl.dart';
part '{{name.snakeCase()}}_repository_state.dart';

{{#use_base_repository}}{{> base_repo }}{{/use_base_repository}}{{#use_repository}}{{> repo }}{{/use_repository}}{{#use_singleton_repository}}{{> singleton_repo }}{{/use_singleton_repository}}