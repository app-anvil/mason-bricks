import 'package:a2f_sdk/a2f_sdk.dart';

import '../../test2_repository.dart';

part '_test2_repository_impl.dart';
part 'test2_repository_state.dart';

abstract interface class Test2Repository
    extends Repository<String, Test2Entity, Test2RepositoryState> {
  /// Creates a new instance of [Test2Repository] that uses the provided data
  /// source.
  factory Test2Repository(Test2DataSource dataSource) =>
      _Test2RepositoryImpl(dataSource);
}

