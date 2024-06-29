import 'package:a2f_sdk/a2f_sdk.dart';

sealed class {{name.pascalCase()}}RepositoryState extends Equatable {
  const {{name.pascalCase()}}RepositoryState();

  @override
  bool? get stringify => false;
}
