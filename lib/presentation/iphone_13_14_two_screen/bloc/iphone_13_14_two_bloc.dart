import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:virasat/presentation/iphone_13_14_two_screen/models/iphone_13_14_two_model.dart';
part 'iphone_13_14_two_event.dart';
part 'iphone_13_14_two_state.dart';

/// A bloc that manages the state of a Iphone1314Two according to the event that is dispatched to it.
class Iphone1314TwoBloc extends Bloc<Iphone1314TwoEvent, Iphone1314TwoState> {
  Iphone1314TwoBloc(Iphone1314TwoState initialState) : super(initialState) {
    on<Iphone1314TwoInitialEvent>(_onInitialize);
  }

  _onInitialize(
    Iphone1314TwoInitialEvent event,
    Emitter<Iphone1314TwoState> emit,
  ) async {}
}
