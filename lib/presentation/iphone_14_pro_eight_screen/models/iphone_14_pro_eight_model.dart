// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';
import 'package:virasat/data/models/selectionPopupModel/selection_popup_model.dart';

/// This class defines the variables used in the [iphone_14_pro_eight_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class Iphone14ProEightModel extends Equatable {
  Iphone14ProEightModel({this.dropdownItemList = const []}) {}

  List<SelectionPopupModel> dropdownItemList;

  Iphone14ProEightModel copyWith(
      {List<SelectionPopupModel>? dropdownItemList}) {
    return Iphone14ProEightModel(
      dropdownItemList: dropdownItemList ?? this.dropdownItemList,
    );
  }

  @override
  List<Object?> get props => [dropdownItemList];
}
