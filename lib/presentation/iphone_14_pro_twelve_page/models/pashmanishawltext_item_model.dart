import '../../../core/app_export.dart';

/// This class is used in the [pashmanishawltext_item_widget] screen.
class PashmanishawltextItemModel {
  PashmanishawltextItemModel({
    this.pashmaniShawlText,
    this.srinagarText,
    this.id,
  }) {
    pashmaniShawlText = pashmaniShawlText ?? "Pashmani Shawl";
    srinagarText = srinagarText ?? "Srinagar";
    id = id ?? "";
  }

  String? pashmaniShawlText;

  String? srinagarText;

  String? id;
}
