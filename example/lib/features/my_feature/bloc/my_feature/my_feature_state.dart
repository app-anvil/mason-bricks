part of 'my_feature_cubit.dart';

final class MyFeatureState extends SuperBlocState<String> {
  final Object? nullableProperty;

  const MyFeatureState._({
    required this.nullableProperty,
    required super.status,
    super.error,
  });

  const MyFeatureState.initial()
      : nullableProperty = null,
        super.initial();

  @override
  SuperBlocState<String> copyWith({
    required StateStatus status,
    Optional<Object?> nullableProperty = const Optional.absent(),
  }) =>
      MyFeatureState._(
        nullableProperty: nullableProperty.orElseIfAbsent(nullableProperty),
        error: error,
        status: status,
      );

  @override
  SuperBlocState<String> copyWithError(String error) => MyFeatureState._(
        nullableProperty: nullableProperty,
        error: error,
        status: status,
      );

  @override
  List<Object?> get props => [nullableProperty, ...super.props];
}
