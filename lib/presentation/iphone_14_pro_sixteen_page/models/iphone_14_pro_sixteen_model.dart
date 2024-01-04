// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import 'craftapaloozacomponent_item_model.dart';

/// This class defines the variables used in the [iphone_14_pro_sixteen_page],
/// and is typically used to hold data that is passed between different parts of the application.
class Iphone14ProSixteenModel extends Equatable {
  Iphone14ProSixteenModel({this.craftapaloozacomponentItemList = const []}) {}

  List<CraftapaloozacomponentItemModel> craftapaloozacomponentItemList;

  Iphone14ProSixteenModel copyWith(
      {List<CraftapaloozacomponentItemModel>? craftapaloozacomponentItemList}) {
    return Iphone14ProSixteenModel(
      craftapaloozacomponentItemList:
          craftapaloozacomponentItemList ?? this.craftapaloozacomponentItemList,
    );
  }

  @override
  List<Object?> get props => [craftapaloozacomponentItemList];
}
