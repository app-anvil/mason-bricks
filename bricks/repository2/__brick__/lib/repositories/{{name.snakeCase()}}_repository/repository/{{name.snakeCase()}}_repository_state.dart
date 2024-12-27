part of '{{name.snakeCase()}}_repository.dart';

typedef {{name.pascalCase()}}RepositoryState = RepositoryState<{{entity.pascalCase()}}Entity>;

typedef {{name.pascalCase()}}Repository{{name.pascalCase()}}Added = RepositoryItemAdded<{{name.pascalCase()}}Entity>;
typedef {{name.pascalCase()}}Repository{{name.pascalCase()}}CollectionFetched
    = RepositoryCollectionFetched<{{name.pascalCase()}}Entity>;
typedef {{name.pascalCase()}}Repository{{name.pascalCase()}}Fetched = RepositoryItemFetched<{{name.pascalCase()}}Entity>;
typedef {{name.pascalCase()}}Repository{{name.pascalCase()}}Updated = RepositoryItemUpdated<{{name.pascalCase()}}Entity>;
typedef {{name.pascalCase()}}Repository{{name.pascalCase()}}Deleted = RepositoryItemDeleted<{{name.pascalCase()}}Entity>;
