import 'bloc/iphone_14_pro_six_bloc.dart';
import 'package:flutter/material.dart';
import 'package:virasat/core/app_export.dart';

class Iphone14ProSixDraweritem extends StatelessWidget {
  const Iphone14ProSixDraweritem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: Container(
            height: SizeUtils.height,
            width: 237.h,
            decoration: AppDecoration.fillPrimary,
            child: Stack(alignment: Alignment.topCenter, children: [
              Align(
                  alignment: Alignment.topCenter,
                  child: Padding(
                      padding: EdgeInsets.only(top: 92.v),
                      child: SizedBox(
                          width: 237.h,
                          child: Divider(
                              color: theme.colorScheme.errorContainer
                                  .withOpacity(1))))),
              Align(
                  alignment: Alignment.topCenter,
                  child: Padding(
                      padding: EdgeInsets.only(top: 142.v),
                      child: SizedBox(width: 237.h, child: Divider()))),
              Align(
                  alignment: Alignment.topCenter,
                  child: Padding(
                      padding: EdgeInsets.only(top: 186.v),
                      child: SizedBox(width: 237.h, child: Divider()))),
              Align(
                  alignment: Alignment.topCenter,
                  child: Padding(
                      padding: EdgeInsets.only(top: 232.v),
                      child: SizedBox(width: 237.h, child: Divider()))),
              Align(
                  alignment: Alignment.topCenter,
                  child: Padding(
                      padding: EdgeInsets.only(top: 281.v),
                      child: SizedBox(width: 237.h, child: Divider()))),
              Align(
                  alignment: Alignment.topCenter,
                  child: Padding(
                      padding: EdgeInsets.only(top: 322.v),
                      child: SizedBox(width: 237.h, child: Divider()))),
              Align(
                  alignment: Alignment.topLeft,
                  child: GestureDetector(
                      onTap: () {
                        onTapTxtHome(context);
                      },
                      child: Padding(
                          padding: EdgeInsets.only(left: 23.h, top: 103.v),
                          child: Text("lbl_home".tr,
                              style: theme.textTheme.titleLarge)))),
              Align(
                  alignment: Alignment.topLeft,
                  child: GestureDetector(
                      onTap: () {
                        onTapTxtSearchByDistrict(context);
                      },
                      child: Padding(
                          padding: EdgeInsets.only(left: 23.h, top: 194.v),
                          child: Text("msg_search_by_district".tr,
                              style: theme.textTheme.titleLarge)))),
              Align(
                  alignment: Alignment.topLeft,
                  child: GestureDetector(
                      onTap: () {
                        onTapTxtExhibitionFair(context);
                      },
                      child: Padding(
                          padding: EdgeInsets.only(left: 23.h, top: 241.v),
                          child: Text("msg_exhibition_fair".tr,
                              style: theme.textTheme.titleLarge)))),
              Align(
                  alignment: Alignment.topLeft,
                  child: Padding(
                      padding: EdgeInsets.only(left: 23.h, top: 290.v),
                      child: Text("msg_government_plans".tr,
                          style: theme.textTheme.titleLarge))),
              Align(
                  alignment: Alignment.topLeft,
                  child: GestureDetector(
                      onTap: () {
                        onTapTxtEmergencyAlert(context);
                      },
                      child: Padding(
                          padding: EdgeInsets.only(left: 23.h, top: 151.v),
                          child: Text("lbl_emergency_alert".tr,
                              style: theme.textTheme.titleLarge)))),
              Align(
                  alignment: Alignment.centerRight,
                  child: SizedBox(
                      height: SizeUtils.height,
                      child: VerticalDivider(
                          width: 4.h,
                          thickness: 4.v,
                          color: theme.colorScheme.onPrimaryContainer))),
              CustomImageView(
                  imagePath: ImageConstant.imgArrowLeft,
                  height: 18.v,
                  width: 25.h,
                  alignment: Alignment.topLeft,
                  margin: EdgeInsets.only(left: 19.h, top: 56.v),
                  onTap: () {
                    onTapImgArrowLeft(context);
                  })
            ])));
  }

  /// Navigates to the iphone14ProThreeScreen when the action is triggered.
  onTapTxtHome(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.iphone14ProThreeScreen,
    );
  }

  /// Navigates to the iphone14ProEightScreen when the action is triggered.
  onTapTxtSearchByDistrict(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.iphone14ProEightScreen,
    );
  }

  /// Navigates to the iphone14ProSixteenTabContainerScreen when the action is triggered.
  onTapTxtExhibitionFair(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.iphone14ProSixteenTabContainerScreen,
    );
  }

  /// Navigates to the iphone1415ProTwoScreen when the action is triggered.
  onTapTxtEmergencyAlert(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.iphone1415ProTwoScreen,
    );
  }

  /// Navigates to the previous screen.
  onTapImgArrowLeft(BuildContext context) {
    NavigatorService.goBack();
  }
}
