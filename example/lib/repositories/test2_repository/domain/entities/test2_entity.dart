import 'package:equatable/equatable.dart';

abstract interface class Test2Entity extends Equatable {
  /// The unique identifier of the Test2.
  String get id;

  Test2Entity copyWith();
}
