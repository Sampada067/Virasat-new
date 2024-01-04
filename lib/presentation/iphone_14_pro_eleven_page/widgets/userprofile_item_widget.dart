import '../models/userprofile_item_model.dart';
import 'package:flutter/material.dart';
import 'package:virasat/core/app_export.dart';

// ignore: must_be_immutable
class UserprofileItemWidget extends StatelessWidget {
  UserprofileItemWidget(
    this.userprofileItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  UserprofileItemModel userprofileItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 14.h,
        vertical: 9.v,
      ),
      decoration: AppDecoration.fillGray20001.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder13,
      ),
      child: Row(
        children: [
          Container(
            height: 45.v,
            width: 54.h,
            margin: EdgeInsets.only(
              top: 3.v,
              bottom: 2.v,
            ),
            padding: EdgeInsets.symmetric(
              horizontal: 9.h,
              vertical: 6.v,
            ),
            decoration: AppDecoration.fillIndigoA100.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder10,
            ),
            child: CustomImageView(
              imagePath: userprofileItemModelObj?.profileImage,
              height: 32.v,
              width: 35.h,
              alignment: Alignment.topCenter,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 8.h,
              top: 11.v,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  userprofileItemModelObj.profileSettingText!,
                  style: CustomTextStyles.titleMediumDeeppurple900,
                ),
                SizedBox(height: 3.v),
                Text(
                  userprofileItemModelObj.updateProfileText!,
                  style: CustomTextStyles.bodyMediumBrawlerGray70001,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
