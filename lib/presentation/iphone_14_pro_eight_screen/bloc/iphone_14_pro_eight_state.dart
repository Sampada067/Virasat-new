// ignore_for_file: must_be_immutable

part of 'iphone_14_pro_eight_bloc.dart';

/// Represents the state of Iphone14ProEight in the application.
class Iphone14ProEightState extends Equatable {
  Iphone14ProEightState({
    this.selectedDropDownValue,
    this.iphone14ProEightModelObj,
  });

  SelectionPopupModel? selectedDropDownValue;

  Iphone14ProEightModel? iphone14ProEightModelObj;

  @override
  List<Object?> get props => [
        selectedDropDownValue,
        iphone14ProEightModelObj,
      ];
  Iphone14ProEightState copyWith({
    SelectionPopupModel? selectedDropDownValue,
    Iphone14ProEightModel? iphone14ProEightModelObj,
  }) {
    return Iphone14ProEightState(
      selectedDropDownValue:
          selectedDropDownValue ?? this.selectedDropDownValue,
      iphone14ProEightModelObj:
          iphone14ProEightModelObj ?? this.iphone14ProEightModelObj,
    );
  }
}
