part of '{{name.snakeCase()}}_cubit.dart';

final class {{name.pascalCase()}}State extends SuperBlocState<{{error_class.pascalCase()}}> {
  final Object? nullableProperty;

  const {{name.pascalCase()}}State._({
    required this.nullableProperty,
    required super.status,
    super.error,
  });

  const {{name.pascalCase()}}State.initial()
      : nullableProperty = null,
        super.initial();

  @override
  {{name.pascalCase()}}State copyWith({
    required StateStatus status,
    Optional<Object?> nullableProperty = const Optional.absent(),
  }) =>
      {{name.pascalCase()}}State._(
        nullableProperty: nullableProperty.orElseIfAbsent(nullableProperty),
        error: error,
        status: status,
      );

  @override
  {{name.pascalCase()}}State copyWithError({{error_class.pascalCase()}} error) => {{name.pascalCase()}}State._(
        nullableProperty: nullableProperty,
        error: error,
        status: StateStatus.failure,
      );

  @override
  String toString() => '${{name.pascalCase()}} { status: $status }';

  @override
  List<Object?> get props => [nullableProperty, ...super.props];
}
