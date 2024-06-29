import 'package:a2f_sdk/a2f_sdk.dart';

import '../../domain/domain.dart';

{{#use_entity_as_interface}}{{> model_implements_entity }}{{/use_entity_as_interface}}{{#use_entity_as_abstract}}{{> model_extends_entity }}{{/use_entity_as_abstract}}
