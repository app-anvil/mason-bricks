import '../{{name.snakeCase()}}_repository.dart';

/// In-memory implementation of the {{name.pascalCase()}} data source.
final class InMemory{{name.pascalCase()}}DataSource implements {{name.pascalCase()}}DataSource {
  final InMemoryData _data;

  InMemory{{name.pascalCase()}}DataSource(this._data);

  @override
  Future<{{name.pascalCase()}}Model> create(Create{{name.pascalCase()}}Input input) {
    throw UnsupportedError(
      'In-memory data source does not support creating new {{name.pascalCase()}}.',
    );
  }

  @override
  Future<{{name.pascalCase()}}Model> read(String id) =>
     _data.{{name.camelCase()}}.getOrThrow(id);
  
  @override
  Future<void> delete(String id)  {
    throw UnsupportedError(
      'In-memory data source does not support deleting {{name.pascalCase()}}.',
    );
  }

}
