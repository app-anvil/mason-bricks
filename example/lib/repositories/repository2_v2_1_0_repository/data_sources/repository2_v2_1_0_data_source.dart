import '../repository2_v2_1_0_repository.dart';

/// Data source for Repository2V210 entities.
abstract interface class Repository2V210DataSource {
  /// Creates a new Repository2V210.
  Future<Repository2V210Entity> create(CreateRepository2V210Input input);

  /// Reads a repository2_v2_1_0 by its [id].
  Future<Repository2V210Entity> read(String id);

  /// Deletes a repository2_v2_1_0 by its [id].
  Future<void> delete(String id);
}
