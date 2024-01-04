import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:virasat/presentation/iphone_13_14_four_screen/models/iphone_13_14_four_model.dart';
part 'iphone_13_14_four_event.dart';
part 'iphone_13_14_four_state.dart';

/// A bloc that manages the state of a Iphone1314Four according to the event that is dispatched to it.
class Iphone1314FourBloc
    extends Bloc<Iphone1314FourEvent, Iphone1314FourState> {
  Iphone1314FourBloc(Iphone1314FourState initialState) : super(initialState) {
    on<Iphone1314FourInitialEvent>(_onInitialize);
  }

  _onInitialize(
    Iphone1314FourInitialEvent event,
    Emitter<Iphone1314FourState> emit,
  ) async {}
}
