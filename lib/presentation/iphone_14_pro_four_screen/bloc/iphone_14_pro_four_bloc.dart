import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:virasat/presentation/iphone_14_pro_four_screen/models/iphone_14_pro_four_model.dart';
part 'iphone_14_pro_four_event.dart';
part 'iphone_14_pro_four_state.dart';

/// A bloc that manages the state of a Iphone14ProFour according to the event that is dispatched to it.
class Iphone14ProFourBloc
    extends Bloc<Iphone14ProFourEvent, Iphone14ProFourState> {
  Iphone14ProFourBloc(Iphone14ProFourState initialState) : super(initialState) {
    on<Iphone14ProFourInitialEvent>(_onInitialize);
  }

  _onInitialize(
    Iphone14ProFourInitialEvent event,
    Emitter<Iphone14ProFourState> emit,
  ) async {}
}
