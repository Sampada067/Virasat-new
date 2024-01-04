// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import 'freshtext1_item_model.dart';
import 'pashmanishawltext_item_model.dart';

/// This class defines the variables used in the [iphone_14_pro_twelve_page],
/// and is typically used to hold data that is passed between different parts of the application.
class Iphone14ProTwelveModel extends Equatable {
  Iphone14ProTwelveModel({
    this.freshtext1ItemList = const [],
    this.pashmanishawltextItemList = const [],
  }) {}

  List<Freshtext1ItemModel> freshtext1ItemList;

  List<PashmanishawltextItemModel> pashmanishawltextItemList;

  Iphone14ProTwelveModel copyWith({
    List<Freshtext1ItemModel>? freshtext1ItemList,
    List<PashmanishawltextItemModel>? pashmanishawltextItemList,
  }) {
    return Iphone14ProTwelveModel(
      freshtext1ItemList: freshtext1ItemList ?? this.freshtext1ItemList,
      pashmanishawltextItemList:
          pashmanishawltextItemList ?? this.pashmanishawltextItemList,
    );
  }

  @override
  List<Object?> get props => [freshtext1ItemList, pashmanishawltextItemList];
}
