import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:virasat/presentation/iphone_14_pro_eight_screen/models/iphone_14_pro_eight_model.dart';
part 'iphone_14_pro_eight_event.dart';
part 'iphone_14_pro_eight_state.dart';

/// A bloc that manages the state of a Iphone14ProEight according to the event that is dispatched to it.
class Iphone14ProEightBloc
    extends Bloc<Iphone14ProEightEvent, Iphone14ProEightState> {
  Iphone14ProEightBloc(Iphone14ProEightState initialState)
      : super(initialState) {
    on<Iphone14ProEightInitialEvent>(_onInitialize);
    on<ChangeDropDownEvent>(_changeDropDown);
  }

  _onInitialize(
    Iphone14ProEightInitialEvent event,
    Emitter<Iphone14ProEightState> emit,
  ) async {
    emit(state.copyWith(
        iphone14ProEightModelObj: state.iphone14ProEightModelObj
            ?.copyWith(dropdownItemList: fillDropdownItemList())));
  }

  _changeDropDown(
    ChangeDropDownEvent event,
    Emitter<Iphone14ProEightState> emit,
  ) {
    emit(state.copyWith(selectedDropDownValue: event.value));
  }

  List<SelectionPopupModel> fillDropdownItemList() {
    return [
      SelectionPopupModel(id: 1, title: "Item One", isSelected: true),
      SelectionPopupModel(id: 2, title: "Item Two"),
      SelectionPopupModel(id: 3, title: "Item Three")
    ];
  }
}
