import 'package:a2f_sdk/a2f_sdk.dart';

import 'models.dart';

class Repository2V210Model extends Model implements Repository2V210Entity {

  @override
  final String id;

  const Repository2V210Model({
    required this.id,
  });

  @override
  Map<String, dynamic> $toMap() => {
        'id': id,
      };

  @override
  List<Object?> get props => [id];

  Repository2V210Model copyWith() => throw UnimplementedError();
}
