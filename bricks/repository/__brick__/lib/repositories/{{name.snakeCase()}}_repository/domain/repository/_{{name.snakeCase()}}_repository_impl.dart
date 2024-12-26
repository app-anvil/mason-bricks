part of '{{name.snakeCase()}}_repository.dart';

{{#use_base_repository}}{{> base_repo_impl }}{{/use_base_repository}}{{#use_repository}}{{> repo_impl }}{{/use_repository}}{{#use_singleton_repository}}{{> singleton_repo_impl }}{{/use_singleton_repository}}