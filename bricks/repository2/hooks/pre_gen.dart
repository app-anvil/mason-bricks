import 'package:mason/mason.dart';

void run(HookContext context) {
  final repoType = context.vars['repository_type'].toString().toLowerCase();
  final isBaseRepo = repoType == 'base_repository';
  final isRepo = repoType == 'repository';
  final isSingletonRepo = repoType == 'singleton_repository';

  context.vars = {
    ...context.vars,
    'entity': context.vars['name'],
    'use_base_repository': isBaseRepo,
    'use_repository': isRepo,
    'use_singleton_repository': isSingletonRepo,
  };
}
