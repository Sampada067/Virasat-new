import '../models/craftapaloozacomponent_item_model.dart';
import 'package:flutter/material.dart';
import 'package:virasat/core/app_export.dart';
import 'package:virasat/widgets/custom_outlined_button.dart';

// ignore: must_be_immutable
class CraftapaloozacomponentItemWidget extends StatelessWidget {
  CraftapaloozacomponentItemWidget(
    this.craftapaloozacomponentItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  CraftapaloozacomponentItemModel craftapaloozacomponentItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 15.h,
        vertical: 7.v,
      ),
      decoration: AppDecoration.outlineGray.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder46,
      ),
      child: Row(
        children: [
          CustomImageView(
            imagePath: craftapaloozacomponentItemModelObj?.craftapaloozaImage,
            height: 121.v,
            width: 124.h,
            radius: BorderRadius.circular(
              37.h,
            ),
            margin: EdgeInsets.symmetric(vertical: 2.v),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 20.h,
              top: 2.v,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Align(
                  alignment: Alignment.center,
                  child: Text(
                    craftapaloozacomponentItemModelObj.craftapaloozaText!,
                    style: CustomTextStyles.titleMediumBlack900,
                  ),
                ),
                SizedBox(height: 4.v),
                CustomOutlinedButton(
                  height: 35.v,
                  width: 129.h,
                  text: "lbl_workshops".tr,
                  buttonTextStyle: theme.textTheme.bodyLarge!,
                ),
                SizedBox(height: 13.v),
                Text(
                  craftapaloozacomponentItemModelObj.participatingText!,
                  style: CustomTextStyles.bodyLargeGray60001,
                ),
                SizedBox(height: 8.v),
                Padding(
                  padding: EdgeInsets.only(left: 6.h),
                  child: Row(
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgSystemUiconsLocation,
                        height: 18.v,
                        width: 16.h,
                        margin: EdgeInsets.only(bottom: 3.v),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 5.h),
                        child: Text(
                          craftapaloozacomponentItemModelObj.playgroundText!,
                          style: theme.textTheme.bodyLarge,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
