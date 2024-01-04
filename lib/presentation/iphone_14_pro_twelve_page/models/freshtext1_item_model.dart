import '../../../core/app_export.dart';

/// This class is used in the [freshtext1_item_widget] screen.
class Freshtext1ItemModel {
  Freshtext1ItemModel({
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
