import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:virasat/presentation/iphone_14_pro_six_draweritem/models/iphone_14_pro_six_model.dart';
part 'iphone_14_pro_six_event.dart';
part 'iphone_14_pro_six_state.dart';

/// A bloc that manages the state of a Iphone14ProSix according to the event that is dispatched to it.
class Iphone14ProSixBloc
    extends Bloc<Iphone14ProSixEvent, Iphone14ProSixState> {
  Iphone14ProSixBloc(Iphone14ProSixState initialState) : super(initialState) {
    on<Iphone14ProSixInitialEvent>(_onInitialize);
  }

  _onInitialize(
    Iphone14ProSixInitialEvent event,
    Emitter<Iphone14ProSixState> emit,
  ) async {}
}
