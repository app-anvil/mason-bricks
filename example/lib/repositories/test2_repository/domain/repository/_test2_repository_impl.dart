part of 'test2_repository.dart';

class _Test2RepositoryImpl
    extends Repository<String, Test2Entity, Test2RepositoryState>
    implements Test2Repository {
  final Test2DataSource _dataSource;

  _Test2RepositoryImpl(this._dataSource);
}
