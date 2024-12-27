import 'package:a2f_sdk/a2f_sdk.dart';

import '../repository2_v2_1_0_repository.dart';

part '_repository2_v2_1_0_repository_impl.dart';
part 'repository2_v2_1_0_repository_state.dart';

abstract interface class Repository2V210Repository
    extends Repository<String, Repository2V210Entity, Repository2V210RepositoryState> {
  /// Creates a new instance of [Repository2V210Repository] that uses the provided data
  /// source.
  factory Repository2V210Repository(Repository2V210DataSource dataSource) =>
      _Repository2V210RepositoryImpl(dataSource);

  /// Creates a new Repository2V210.
  Future<void> create(CreateRepository2V210Input input);

  /// Fetches all repository2_v2_1_0.
  Future<List<Repository2V210Entity>> fetchMany();

  /// Fetches a repository2_v2_1_0 by its [id].
  Future<Repository2V210Entity> fetchOne(String id);

  /// Deletes a repository2_v2_1_0 by its [id].
  Future<void> delete(String id);
}

