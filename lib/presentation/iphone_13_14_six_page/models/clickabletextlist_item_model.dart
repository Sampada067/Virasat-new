import '../../../core/app_export.dart';

/// This class is used in the [clickabletextlist_item_widget] screen.
class ClickabletextlistItemModel {
  ClickabletextlistItemModel({
    this.clickableImage,
    this.clickableText,
    this.id,
  }) {
    clickableImage = clickableImage ?? ImageConstant.imgCentralGovernm;
    clickableText = clickableText ?? "Click on link";
    id = id ?? "";
  }

  String? clickableImage;

  String? clickableText;

  String? id;
}
