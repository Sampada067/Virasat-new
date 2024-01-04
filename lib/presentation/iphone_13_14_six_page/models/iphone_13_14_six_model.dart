// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import 'clickabletextlist_item_model.dart';

/// This class defines the variables used in the [iphone_13_14_six_page],
/// and is typically used to hold data that is passed between different parts of the application.
class Iphone1314SixModel extends Equatable {
  Iphone1314SixModel({this.clickabletextlistItemList = const []}) {}

  List<ClickabletextlistItemModel> clickabletextlistItemList;

  Iphone1314SixModel copyWith(
      {List<ClickabletextlistItemModel>? clickabletextlistItemList}) {
    return Iphone1314SixModel(
      clickabletextlistItemList:
          clickabletextlistItemList ?? this.clickabletextlistItemList,
    );
  }

  @override
  List<Object?> get props => [clickabletextlistItemList];
}
