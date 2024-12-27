import 'package:a2f_sdk/a2f_sdk.dart';

import '../repository2_repository.dart';

part '_repository2_repository_impl.dart';
part 'repository2_repository_state.dart';

abstract interface class Repository2Repository
    extends Repository<String, Repository2Entity, Repository2RepositoryState> {
  /// Creates a new instance of [Repository2Repository] that uses the provided data
  /// source.
  factory Repository2Repository(Repository2DataSource dataSource) =>
      _Repository2RepositoryImpl(dataSource);

  /// Creates a new Repository2.
  Future<void> create(CreateRepository2Input input);

  /// Reads all repository2.
  Future<List<Repository2Entity>> readAll();

  /// Reads a repository2 by its [id].
  Future<Repository2Entity> readOneById(String id);

  /// Updates a repository2 by its [id].
  Future<void> delete(String id);
}

