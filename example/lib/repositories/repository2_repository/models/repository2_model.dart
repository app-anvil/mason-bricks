import 'package:a2f_sdk/a2f_sdk.dart';

import 'models.dart';

class Repository2Model extends Model implements Repository2Entity {

  @override
  final String id;

  const Repository2Model({
    required this.id,
  });

  @override
  Map<String, dynamic> $toMap() => {
        'id': id,
      };

  @override
  List<Object?> get props => [id];

  Repository2Model copyWith() => throw UnimplementedError();
}
