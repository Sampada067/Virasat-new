import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:virasat/presentation/iphone_14_pro_nine_screen/models/iphone_14_pro_nine_model.dart';
part 'iphone_14_pro_nine_event.dart';
part 'iphone_14_pro_nine_state.dart';

/// A bloc that manages the state of a Iphone14ProNine according to the event that is dispatched to it.
class Iphone14ProNineBloc
    extends Bloc<Iphone14ProNineEvent, Iphone14ProNineState> {
  Iphone14ProNineBloc(Iphone14ProNineState initialState) : super(initialState) {
    on<Iphone14ProNineInitialEvent>(_onInitialize);
  }

  _onInitialize(
    Iphone14ProNineInitialEvent event,
    Emitter<Iphone14ProNineState> emit,
  ) async {}
}
