import '../models/clickabletextlist_item_model.dart';
import 'package:flutter/material.dart';
import 'package:virasat/core/app_export.dart';

// ignore: must_be_immutable
class ClickabletextlistItemWidget extends StatelessWidget {
  ClickabletextlistItemWidget(
    this.clickabletextlistItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  ClickabletextlistItemModel clickabletextlistItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomImageView(
          imagePath: clickabletextlistItemModelObj?.clickableImage,
          height: 135.v,
          width: 325.h,
          radius: BorderRadius.circular(
            20.h,
          ),
        ),
        SizedBox(height: 2.v),
        Padding(
          padding: EdgeInsets.only(left: 14.h),
          child: Text(
            clickabletextlistItemModelObj.clickableText!,
            style: CustomTextStyles.bodyMediumBrawlerGray60001,
          ),
        ),
      ],
    );
  }
}
