import 'package:example/repositories/test2_repository/test2_repository.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class MockTest2DataSource extends Mock implements Test2DataSource {}

class MockTest2 extends Mock implements Test2Entity {}

void main() {
  late MockTest2DataSource mockTest2DataSource;
  late Test2Repository repo;

  setUp(() {
    mockTest2DataSource = MockTest2DataSource();
    repo = Test2Repository(mockTest2DataSource);

    registerFallbackValue(MockTest2());
  });
}
