import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:virasat/presentation/iphone_13_14_three_screen/models/iphone_13_14_three_model.dart';
part 'iphone_13_14_three_event.dart';
part 'iphone_13_14_three_state.dart';

/// A bloc that manages the state of a Iphone1314Three according to the event that is dispatched to it.
class Iphone1314ThreeBloc
    extends Bloc<Iphone1314ThreeEvent, Iphone1314ThreeState> {
  Iphone1314ThreeBloc(Iphone1314ThreeState initialState) : super(initialState) {
    on<Iphone1314ThreeInitialEvent>(_onInitialize);
  }

  _onInitialize(
    Iphone1314ThreeInitialEvent event,
    Emitter<Iphone1314ThreeState> emit,
  ) async {}
}
