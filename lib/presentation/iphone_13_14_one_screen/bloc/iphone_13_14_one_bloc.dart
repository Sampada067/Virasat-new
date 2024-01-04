import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:virasat/presentation/iphone_13_14_one_screen/models/iphone_13_14_one_model.dart';
part 'iphone_13_14_one_event.dart';
part 'iphone_13_14_one_state.dart';

/// A bloc that manages the state of a Iphone1314One according to the event that is dispatched to it.
class Iphone1314OneBloc extends Bloc<Iphone1314OneEvent, Iphone1314OneState> {
  Iphone1314OneBloc(Iphone1314OneState initialState) : super(initialState) {
    on<Iphone1314OneInitialEvent>(_onInitialize);
  }

  _onInitialize(
    Iphone1314OneInitialEvent event,
    Emitter<Iphone1314OneState> emit,
  ) async {
    emit(state.copyWith(numberController: TextEditingController()));
  }
}
