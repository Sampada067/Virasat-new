import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:virasat/presentation/iphone_14_pro_twelve_container_screen/models/iphone_14_pro_twelve_container_model.dart';
part 'iphone_14_pro_twelve_container_event.dart';
part 'iphone_14_pro_twelve_container_state.dart';

/// A bloc that manages the state of a Iphone14ProTwelveContainer according to the event that is dispatched to it.
class Iphone14ProTwelveContainerBloc extends Bloc<
    Iphone14ProTwelveContainerEvent, Iphone14ProTwelveContainerState> {
  Iphone14ProTwelveContainerBloc(Iphone14ProTwelveContainerState initialState)
      : super(initialState) {
    on<Iphone14ProTwelveContainerInitialEvent>(_onInitialize);
  }

  _onInitialize(
    Iphone14ProTwelveContainerInitialEvent event,
    Emitter<Iphone14ProTwelveContainerState> emit,
  ) async {}
}
