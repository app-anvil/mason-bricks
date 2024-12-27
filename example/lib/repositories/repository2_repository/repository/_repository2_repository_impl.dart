part of 'repository2_repository.dart';

class _Repository2RepositoryImpl
    extends Repository<String, Repository2Entity, Repository2RepositoryState>
    implements Repository2Repository {
  final Repository2DataSource _dataSource;

  _Repository2RepositoryImpl(this._dataSource);

  @override
  Future<void> create(CreateRepository2Input input) {
    throw UnimplementedError();
  }

  @override
  Future<List<Repository2Entity>> readAll() {
    throw UnimplementedError();
  }

  @override
  Future<Repository2Entity> readOneById(String id) {
    throw UnimplementedError();
  }

  @override
  Future<void> delete(String id) {
    throw UnimplementedError();
  }
}
