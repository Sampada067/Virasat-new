import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:virasat/presentation/iphone_14_pro_fifteen_screen/models/iphone_14_pro_fifteen_model.dart';
part 'iphone_14_pro_fifteen_event.dart';
part 'iphone_14_pro_fifteen_state.dart';

/// A bloc that manages the state of a Iphone14ProFifteen according to the event that is dispatched to it.
class Iphone14ProFifteenBloc
    extends Bloc<Iphone14ProFifteenEvent, Iphone14ProFifteenState> {
  Iphone14ProFifteenBloc(Iphone14ProFifteenState initialState)
      : super(initialState) {
    on<Iphone14ProFifteenInitialEvent>(_onInitialize);
  }

  _onInitialize(
    Iphone14ProFifteenInitialEvent event,
    Emitter<Iphone14ProFifteenState> emit,
  ) async {
    emit(state.copyWith(
      emailController: TextEditingController(),
    ));
  }
}
