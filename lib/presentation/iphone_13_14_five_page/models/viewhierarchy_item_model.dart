import '../../../core/app_export.dart';

/// This class is used in the [viewhierarchy_item_widget] screen.
class ViewhierarchyItemModel {
  ViewhierarchyItemModel({
    this.image,
    this.text,
    this.text1,
    this.id,
  }) {
    image = image ?? ImageConstant.imgDownload10;
    text = text ?? "3k+ Views";
    text1 = text1 ?? "Play now";
    id = id ?? "";
  }

  String? image;

  String? text;

  String? text1;

  String? id;
}
