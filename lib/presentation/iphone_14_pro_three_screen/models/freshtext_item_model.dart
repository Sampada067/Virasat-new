import '../../../core/app_export.dart';

/// This class is used in the [freshtext_item_widget] screen.
class FreshtextItemModel {
  FreshtextItemModel({
    this.freshImage,
    this.freshText,
    this.id,
  }) {
    freshImage = freshImage ?? ImageConstant.imgUntitledDesign;
    freshText = freshText ?? "Fresh";
    id = id ?? "";
  }

  String? freshImage;

  String? freshText;

  String? id;
}
