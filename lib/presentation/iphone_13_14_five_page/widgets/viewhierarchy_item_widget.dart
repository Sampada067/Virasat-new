import '../models/viewhierarchy_item_model.dart';
import 'package:flutter/material.dart';
import 'package:virasat/core/app_export.dart';
import 'package:virasat/widgets/custom_outlined_button.dart';

// ignore: must_be_immutable
class ViewhierarchyItemWidget extends StatelessWidget {
  ViewhierarchyItemWidget(
    this.viewhierarchyItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  ViewhierarchyItemModel viewhierarchyItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 13.v),
      decoration: AppDecoration.outlineGray.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder46,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          CustomImageView(
            imagePath: viewhierarchyItemModelObj?.image,
            height: 80.v,
            width: 111.h,
            radius: BorderRadius.circular(
              16.h,
            ),
            margin: EdgeInsets.only(
              top: 21.v,
              bottom: 14.v,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 15.v),
            child: Column(
              children: [
                CustomOutlinedButton(
                  height: 35.v,
                  width: 154.h,
                  text: "lbl_tackling_world".tr,
                  buttonTextStyle: theme.textTheme.bodyLarge!,
                ),
                SizedBox(height: 8.v),
                Text(
                  viewhierarchyItemModelObj.text!,
                  style: CustomTextStyles.bodyLargeGray60001,
                ),
                SizedBox(height: 7.v),
                Container(
                  width: 93.h,
                  padding: EdgeInsets.symmetric(
                    horizontal: 9.h,
                    vertical: 2.v,
                  ),
                  decoration: AppDecoration.fillGreenA.copyWith(
                    borderRadius: BorderRadiusStyle.roundedBorder13,
                  ),
                  child: Text(
                    viewhierarchyItemModelObj.text1!,
                    style: CustomTextStyles.bodyLargeWhiteA70002_1,
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
