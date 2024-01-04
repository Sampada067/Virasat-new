import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:virasat/presentation/iphone_14_pro_sixteen_tab_container_screen/models/iphone_14_pro_sixteen_tab_container_model.dart';
part 'iphone_14_pro_sixteen_tab_container_event.dart';
part 'iphone_14_pro_sixteen_tab_container_state.dart';

/// A bloc that manages the state of a Iphone14ProSixteenTabContainer according to the event that is dispatched to it.
class Iphone14ProSixteenTabContainerBloc extends Bloc<
    Iphone14ProSixteenTabContainerEvent, Iphone14ProSixteenTabContainerState> {
  Iphone14ProSixteenTabContainerBloc(
      Iphone14ProSixteenTabContainerState initialState)
      : super(initialState) {
    on<Iphone14ProSixteenTabContainerInitialEvent>(_onInitialize);
  }

  _onInitialize(
    Iphone14ProSixteenTabContainerInitialEvent event,
    Emitter<Iphone14ProSixteenTabContainerState> emit,
  ) async {}
}
