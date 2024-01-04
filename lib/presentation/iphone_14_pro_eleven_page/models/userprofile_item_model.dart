import '../../../core/app_export.dart';

/// This class is used in the [userprofile_item_widget] screen.
class UserprofileItemModel {
  UserprofileItemModel({
    this.profileImage,
    this.profileSettingText,
    this.updateProfileText,
    this.id,
  }) {
    profileImage = profileImage ?? ImageConstant.imgIconamoonProfileThin;
    profileSettingText = profileSettingText ?? "Profile Setting";
    updateProfileText = updateProfileText ?? "Update and Modify Your Profile";
    id = id ?? "";
  }

  String? profileImage;

  String? profileSettingText;

  String? updateProfileText;

  String? id;
}
