// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import 'freshtext_item_model.dart';
import 'view_item_model.dart';

/// This class defines the variables used in the [iphone_14_pro_three_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class Iphone14ProThreeModel extends Equatable {
  Iphone14ProThreeModel({
    this.freshtextItemList = const [],
    this.viewItemList = const [],
  }) {}

  List<FreshtextItemModel> freshtextItemList;

  List<ViewItemModel> viewItemList;

  Iphone14ProThreeModel copyWith({
    List<FreshtextItemModel>? freshtextItemList,
    List<ViewItemModel>? viewItemList,
  }) {
    return Iphone14ProThreeModel(
      freshtextItemList: freshtextItemList ?? this.freshtextItemList,
      viewItemList: viewItemList ?? this.viewItemList,
    );
  }

  @override
  List<Object?> get props => [freshtextItemList, viewItemList];
}
