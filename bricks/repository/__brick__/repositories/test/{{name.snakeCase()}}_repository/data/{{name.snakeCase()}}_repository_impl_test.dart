import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

import '../../../{{name.snakeCase()}}_repository/{{name.snakeCase()}}_repository.dart';

class Mock{{name.pascalCase()}}DataSource extends Mock implements {{name.pascalCase()}}DataSource {}

class Mock{{entity.pascalCase()}} extends Mock implements {{entity.pascalCase()}}Entity {}

void main() {
  late Mock{{name.pascalCase()}}DataSource mock{{name.pascalCase()}}DataSource;
  late {{name.pascalCase()}}RepositoryImpl repo;

  setUp(() {
    mock{{name.pascalCase()}}DataSource = Mock{{name.pascalCase()}}DataSource();
    repo = {{name.pascalCase()}}RepositoryImpl(mock{{name.pascalCase()}}DataSource);

    registerFallbackValue(Mock{{entity.pascalCase()}}());
  });
}
