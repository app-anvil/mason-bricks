import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

import '../../../../lib/repositories/repository2_v2_1_0_repository/repository2_v2_1_0_repository.dart';

class MockRepository2V210DataSource extends Mock implements Repository2V210DataSource {}

class MockRepository2V210 extends Mock implements Repository2V210Entity {}

void main() {
  late MockRepository2V210DataSource mockRepository2V210DataSource;
  late Repository2V210Repository repo;

  setUp(() {
    mockRepository2V210DataSource = MockRepository2V210DataSource();
    repo = Repository2V210Repository(mockRepository2V210DataSource);

    registerFallbackValue(MockRepository2V210());
  });
}
