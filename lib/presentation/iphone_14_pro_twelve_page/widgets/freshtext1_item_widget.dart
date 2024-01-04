import '../models/freshtext1_item_model.dart';
import 'package:flutter/material.dart';
import 'package:virasat/core/app_export.dart';

// ignore: must_be_immutable
class Freshtext1ItemWidget extends StatelessWidget {
  Freshtext1ItemWidget(
    this.freshtext1ItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  Freshtext1ItemModel freshtext1ItemModelObj;

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
              imagePath: freshtext1ItemModelObj?.freshImage,
              height: 56.v,
              width: 65.h,
            ),
            Padding(
              padding: EdgeInsets.only(left: 14.h),
              child: Text(
                freshtext1ItemModelObj.freshText!,
                style: theme.textTheme.bodySmall,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
