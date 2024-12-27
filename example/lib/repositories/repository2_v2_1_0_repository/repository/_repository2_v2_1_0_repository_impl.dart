part of 'repository2_v2_1_0_repository.dart';

class _Repository2V210RepositoryImpl extends Repository<
    String,
    Repository2V210Entity,
    Repository2V210RepositoryState> implements Repository2V210Repository {
  final Repository2V210DataSource _dataSource;

  _Repository2V210RepositoryImpl(this._dataSource);

  @override
  Future<Repository2V210Entity> create(CreateRepository2V210Input input) async {
    final created = await _dataSource.create(input);
    cache.save(created.id, created);
    emit(Repository2V210RepositoryRepository2V210Added(created));
    return created;
  }

  @override
  Future<List<Repository2V210Entity>> fetchMany() {
    throw UnimplementedError();
  }

  @override
  Future<Repository2V210Entity> fetchOne(String id) async {
    final item = await _dataSource.read(id);
    cache.save(item.id, item);
    emit(Repository2V210RepositoryRepository2V210Fetched(item));
    return item;
  }

  @override
  Future<void> delete(String id) async {
    await _dataSource.delete(id);
    final deletedItem = cache.getOrThrow(id);
    cache.delete(id);
    emit(Repository2V210RepositoryRepository2V210Deleted(deletedItem));
  }
}
