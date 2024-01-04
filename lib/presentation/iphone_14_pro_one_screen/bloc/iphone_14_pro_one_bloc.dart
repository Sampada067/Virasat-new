import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:virasat/presentation/iphone_14_pro_one_screen/models/iphone_14_pro_one_model.dart';
part 'iphone_14_pro_one_event.dart';
part 'iphone_14_pro_one_state.dart';

/// A bloc that manages the state of a Iphone14ProOne according to the event that is dispatched to it.
class Iphone14ProOneBloc
    extends Bloc<Iphone14ProOneEvent, Iphone14ProOneState> {
  Iphone14ProOneBloc(Iphone14ProOneState initialState) : super(initialState) {
    on<Iphone14ProOneInitialEvent>(_onInitialize);
  }

  _onInitialize(
    Iphone14ProOneInitialEvent event,
    Emitter<Iphone14ProOneState> emit,
  ) async {}
}
