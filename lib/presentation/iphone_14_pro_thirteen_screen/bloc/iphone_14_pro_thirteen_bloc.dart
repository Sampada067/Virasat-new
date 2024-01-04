import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:virasat/presentation/iphone_14_pro_thirteen_screen/models/iphone_14_pro_thirteen_model.dart';
part 'iphone_14_pro_thirteen_event.dart';
part 'iphone_14_pro_thirteen_state.dart';

/// A bloc that manages the state of a Iphone14ProThirteen according to the event that is dispatched to it.
class Iphone14ProThirteenBloc
    extends Bloc<Iphone14ProThirteenEvent, Iphone14ProThirteenState> {
  Iphone14ProThirteenBloc(Iphone14ProThirteenState initialState)
      : super(initialState) {
    on<Iphone14ProThirteenInitialEvent>(_onInitialize);
  }

  _onInitialize(
    Iphone14ProThirteenInitialEvent event,
    Emitter<Iphone14ProThirteenState> emit,
  ) async {
    emit(state.copyWith(
        categoryvalueController: TextEditingController(),
        nameController: TextEditingController(),
        productDescriptionvalueController: TextEditingController()));
  }
}
