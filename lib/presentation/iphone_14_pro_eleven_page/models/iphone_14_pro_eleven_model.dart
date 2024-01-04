// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import 'userprofile_item_model.dart';

/// This class defines the variables used in the [iphone_14_pro_eleven_page],
/// and is typically used to hold data that is passed between different parts of the application.
class Iphone14ProElevenModel extends Equatable {
  Iphone14ProElevenModel({this.userprofileItemList = const []}) {}

  List<UserprofileItemModel> userprofileItemList;

  Iphone14ProElevenModel copyWith(
      {List<UserprofileItemModel>? userprofileItemList}) {
    return Iphone14ProElevenModel(
      userprofileItemList: userprofileItemList ?? this.userprofileItemList,
    );
  }

  @override
  List<Object?> get props => [userprofileItemList];
}
