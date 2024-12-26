import 'package:a2f_sdk/a2f_sdk.dart';

import '../../domain/domain.dart';

class Test2Model extends Model implements Test2Entity {
  @override
  final String id;

  const Test2Model({
    required this.id,
  });

  @override
  Test2Model copyWith() => throw UnimplementedError();

  @override
  Map<String, dynamic> $toMap() => {};

  @override
  List<Object?> get props => [id];
}
