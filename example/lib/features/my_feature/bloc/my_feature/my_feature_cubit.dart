import 'package:a2f_sdk/a2f_sdk.dart';
import 'package:bloc/bloc.dart';

part 'my_feature_state.dart';

class MyFeatureCubit extends Cubit<MyFeatureState> {
  MyFeatureCubit() : super(const MyFeatureState.initial());
}

