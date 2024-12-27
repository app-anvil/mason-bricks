import 'package:equatable/equatable.dart';
import 'package:a2f_sdk/a2f_sdk.dart';

abstract interface class {{entity.pascalCase()}}Entity
    implements Equatable, UniquelyIdentifiableEntity {}
