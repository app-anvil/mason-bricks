import '../{{name.snakeCase()}}_repository.dart';

/// Data source for {{name.pascalCase()}} entities.
abstract interface class {{name.pascalCase()}}DataSource {
  /// Creates a new {{entity.pascalCase()}}.
  Future<{{entity.pascalCase()}}Entity> create(Create{{entity.pascalCase()}}Input input);

  /// Reads a {{entity.snakeCase()}} by its [id].
  Future<{{entity.pascalCase()}}Entity> read(String id);

  /// Deletes a {{entity.snakeCase()}} by its [id].
  Future<void> delete(String id);
}
