import '../{{name.snakeCase()}}_repository.dart';

class {{name.pascalCase()}}RepositoryImpl implements {{name.pascalCase()}}Repository {
  final {{name.pascalCase()}}DataSource _dataSource;

  {{name.pascalCase()}}RepositoryImpl(this._dataSource);
}
