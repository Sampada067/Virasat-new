import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:virasat/presentation/iphone_14_pro_five_screen/models/iphone_14_pro_five_model.dart';
part 'iphone_14_pro_five_event.dart';
part 'iphone_14_pro_five_state.dart';

/// A bloc that manages the state of a Iphone14ProFive according to the event that is dispatched to it.
class Iphone14ProFiveBloc
    extends Bloc<Iphone14ProFiveEvent, Iphone14ProFiveState> {
  Iphone14ProFiveBloc(Iphone14ProFiveState initialState) : super(initialState) {
    on<Iphone14ProFiveInitialEvent>(_onInitialize);
  }

  _onInitialize(
    Iphone14ProFiveInitialEvent event,
    Emitter<Iphone14ProFiveState> emit,
  ) async {}
}
