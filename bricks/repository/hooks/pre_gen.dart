import 'package:mason/mason.dart';

void run(HookContext context) {
  final entityIs =
      context.vars['entity_is'].toString().toLowerCase();
  final isAbstract = entityIs == 'abstract';
  final isInterface = entityIs == 'interface';

  final repoType =
      context.vars['repository_type'].toString().toLowerCase();
  final isBaseRepo = repoType == 'base_repository';
  final isRepo = repoType == 'repository';
  final isSingletonRepo = repoType == 'singleton_repository';
  
  context.vars = {
    ...context.vars,
    'use_entity_as_interface': isInterface,
    'use_entity_as_abstract': isAbstract,
    'use_base_repository': isBaseRepo,
    'use_repository': isRepo,
    'use_singleton_repository': isSingletonRepo,
  };
}
