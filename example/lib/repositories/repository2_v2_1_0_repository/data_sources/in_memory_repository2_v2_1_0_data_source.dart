import '../repository2_v2_1_0_repository.dart';

/// In-memory implementation of the Repository2V210 data source.
final class InMemoryRepository2V210DataSource implements Repository2V210DataSource {
  final InMemoryData _data;

  InMemoryRepository2V210DataSource(this._data);

  @override
  Future<Repository2V210Model> create(CreateRepository2V210Input input) {
    throw UnsupportedError(
      'In-memory data source does not support creating new Repository2V210.',
    );
  }

  @override
  Future<Repository2V210Model> read(String id) =>
     _data.repository2V210.getOrThrow(id);
  
  @override
  Future<void> delete(String id)  {
    throw UnsupportedError(
      'In-memory data source does not support deleting Repository2V210.',
    );
  }

}
