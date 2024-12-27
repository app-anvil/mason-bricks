import 'package:a2f_sdk/a2f_sdk.dart';

import 'models.dart';

class {{entity.pascalCase()}}Model extends Model implements {{entity.pascalCase()}}Entity {

  @override
  final String id;

  const {{entity.pascalCase()}}Model({
    required this.id,
  });

  @override
  Map<String, dynamic> $toMap() => {
        'id': id,
      };

  @override
  List<Object?> get props => [id];

  {{entity.pascalCase()}}Model copyWith() => throw UnimplementedError();
}
