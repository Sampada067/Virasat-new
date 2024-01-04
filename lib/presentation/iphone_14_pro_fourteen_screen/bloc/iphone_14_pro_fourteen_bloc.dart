import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:virasat/presentation/iphone_14_pro_fourteen_screen/models/iphone_14_pro_fourteen_model.dart';
part 'iphone_14_pro_fourteen_event.dart';
part 'iphone_14_pro_fourteen_state.dart';

/// A bloc that manages the state of a Iphone14ProFourteen according to the event that is dispatched to it.
class Iphone14ProFourteenBloc
    extends Bloc<Iphone14ProFourteenEvent, Iphone14ProFourteenState> {
  Iphone14ProFourteenBloc(Iphone14ProFourteenState initialState)
      : super(initialState) {
    on<Iphone14ProFourteenInitialEvent>(_onInitialize);
  }

  _onInitialize(
    Iphone14ProFourteenInitialEvent event,
    Emitter<Iphone14ProFourteenState> emit,
  ) async {
    emit(state.copyWith(promoCodeController: TextEditingController()));
  }
}
