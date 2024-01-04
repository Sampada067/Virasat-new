import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:virasat/presentation/iphone_14_pro_ten_screen/models/iphone_14_pro_ten_model.dart';
part 'iphone_14_pro_ten_event.dart';
part 'iphone_14_pro_ten_state.dart';

/// A bloc that manages the state of a Iphone14ProTen according to the event that is dispatched to it.
class Iphone14ProTenBloc
    extends Bloc<Iphone14ProTenEvent, Iphone14ProTenState> {
  Iphone14ProTenBloc(Iphone14ProTenState initialState) : super(initialState) {
    on<Iphone14ProTenInitialEvent>(_onInitialize);
  }

  _onInitialize(
    Iphone14ProTenInitialEvent event,
    Emitter<Iphone14ProTenState> emit,
  ) async {}
}
