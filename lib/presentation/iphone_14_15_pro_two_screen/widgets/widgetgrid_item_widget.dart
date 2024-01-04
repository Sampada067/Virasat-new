import '../models/widgetgrid_item_model.dart';
import 'package:flutter/material.dart';
import 'package:virasat/core/app_export.dart';

// ignore: must_be_immutable
class WidgetgridItemWidget extends StatelessWidget {
  WidgetgridItemWidget(
    this.widgetgridItemModelObj, {
    Key? key,
    this.onTapImgWhatsAppImage,
  }) : super(
          key: key,
        );

  WidgetgridItemModel widgetgridItemModelObj;

  VoidCallback? onTapImgWhatsAppImage;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: CustomImageView(
        imagePath: widgetgridItemModelObj?.whatsAppImage,
        height: 135.v,
        width: 150.h,
        onTap: () {
          onTapImgWhatsAppImage!.call();
        },
      ),
    );
  }
}
