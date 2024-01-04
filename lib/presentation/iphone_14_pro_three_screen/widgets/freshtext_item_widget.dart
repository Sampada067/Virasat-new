import '../models/freshtext_item_model.dart';
import 'package:flutter/material.dart';
import 'package:virasat/core/app_export.dart';

// ignore: must_be_immutable
class FreshtextItemWidget extends StatelessWidget {
  FreshtextItemWidget(
    this.freshtextItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  FreshtextItemModel freshtextItemModelObj;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 65.h,
      child: Padding(
        padding: EdgeInsets.only(
          top: 7.v,
          bottom: 3.v,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomImageView(
              imagePath: freshtextItemModelObj?.freshImage,
              height: 56.v,
              width: 65.h,
            ),
            Padding(
              padding: EdgeInsets.only(left: 14.h),
              child: Text(
                freshtextItemModelObj.freshText!,
                style: theme.textTheme.bodySmall,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
