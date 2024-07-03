import 'package:a2f_sdk/a2f_sdk.dart';

import '../../{{name.snakeCase()}}_repository.dart';

final class {{name.pascalCase()}}InMemoryDataSource
    extends InMemoryDataSource<{{entity.pascalCase()}}Id, {{entity.pascalCase()}}Entity> implements {{name.pascalCase()}}DataSource {}
