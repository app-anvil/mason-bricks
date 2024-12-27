import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

import '../../../../lib/repositories/repository2_repository/repository2_repository.dart';

class MockRepository2DataSource extends Mock implements Repository2DataSource {}

class MockRepository2 extends Mock implements Repository2Entity {}

void main() {
  late MockRepository2DataSource mockRepository2DataSource;
  late Repository2Repository repo;

  setUp(() {
    mockRepository2DataSource = MockRepository2DataSource();
    repo = Repository2Repository(mockRepository2DataSource);

    registerFallbackValue(MockRepository2());
  });
}
