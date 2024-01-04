// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import 'viewhierarchy_item_model.dart';

/// This class defines the variables used in the [iphone_13_14_five_page],
/// and is typically used to hold data that is passed between different parts of the application.
class Iphone1314FiveModel extends Equatable {
  Iphone1314FiveModel({this.viewhierarchyItemList = const []}) {}

  List<ViewhierarchyItemModel> viewhierarchyItemList;

  Iphone1314FiveModel copyWith(
      {List<ViewhierarchyItemModel>? viewhierarchyItemList}) {
    return Iphone1314FiveModel(
      viewhierarchyItemList:
          viewhierarchyItemList ?? this.viewhierarchyItemList,
    );
  }

  @override
  List<Object?> get props => [viewhierarchyItemList];
}
