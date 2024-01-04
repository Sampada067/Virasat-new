import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/userprofile_item_model.dart';
import 'package:virasat/presentation/iphone_14_pro_eleven_page/models/iphone_14_pro_eleven_model.dart';
part 'iphone_14_pro_eleven_event.dart';
part 'iphone_14_pro_eleven_state.dart';

/// A bloc that manages the state of a Iphone14ProEleven according to the event that is dispatched to it.
class Iphone14ProElevenBloc
    extends Bloc<Iphone14ProElevenEvent, Iphone14ProElevenState> {
  Iphone14ProElevenBloc(Iphone14ProElevenState initialState)
      : super(initialState) {
    on<Iphone14ProElevenInitialEvent>(_onInitialize);
  }

  _onInitialize(
    Iphone14ProElevenInitialEvent event,
    Emitter<Iphone14ProElevenState> emit,
  ) async {
    emit(state.copyWith(
        iphone14ProElevenModelObj: state.iphone14ProElevenModelObj
            ?.copyWith(userprofileItemList: fillUserprofileItemList())));
  }

  List<UserprofileItemModel> fillUserprofileItemList() {
    return [
      UserprofileItemModel(
          profileImage: ImageConstant.imgIconamoonProfileThin,
          profileSettingText: "Profile Setting",
          updateProfileText: "Update and Modify Your Profile"),
      UserprofileItemModel(
          profileImage: ImageConstant.imgMaterialSymbolsPrivacyTip,
          profileSettingText: "Privacy",
          updateProfileText: "Change Your Password"),
      UserprofileItemModel(
          profileImage: ImageConstant.imgMingcuteNotificationLine,
          profileSettingText: "Notifications",
          updateProfileText: "Change Your Notification Settings")
    ];
  }
}
