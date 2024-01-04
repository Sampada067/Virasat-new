import '../../../core/app_export.dart';

/// This class is used in the [widgetgrid_item_widget] screen.
class WidgetgridItemModel {
  WidgetgridItemModel({
    this.whatsAppImage,
    this.id,
  }) {
    whatsAppImage = whatsAppImage ?? ImageConstant.imgWhatsappImage20230205;
    id = id ?? "";
  }

  String? whatsAppImage;

  String? id;
}
