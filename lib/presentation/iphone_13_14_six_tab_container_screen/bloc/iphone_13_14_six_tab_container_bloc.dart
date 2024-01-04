import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:virasat/presentation/iphone_13_14_six_tab_container_screen/models/iphone_13_14_six_tab_container_model.dart';
part 'iphone_13_14_six_tab_container_event.dart';
part 'iphone_13_14_six_tab_container_state.dart';

/// A bloc that manages the state of a Iphone1314SixTabContainer according to the event that is dispatched to it.
class Iphone1314SixTabContainerBloc extends Bloc<Iphone1314SixTabContainerEvent,
    Iphone1314SixTabContainerState> {
  Iphone1314SixTabContainerBloc(Iphone1314SixTabContainerState initialState)
      : super(initialState) {
    on<Iphone1314SixTabContainerInitialEvent>(_onInitialize);
  }

  _onInitialize(
    Iphone1314SixTabContainerInitialEvent event,
    Emitter<Iphone1314SixTabContainerState> emit,
  ) async {}
}
