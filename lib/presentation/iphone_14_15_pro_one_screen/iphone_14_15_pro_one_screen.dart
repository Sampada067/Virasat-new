import 'bloc/iphone_14_15_pro_one_bloc.dart';
import 'models/iphone_14_15_pro_one_model.dart';
import 'package:flutter/material.dart';
import 'package:virasat/core/app_export.dart';
import 'package:virasat/widgets/app_bar/appbar_leading_image.dart';
import 'package:virasat/widgets/app_bar/custom_app_bar.dart';

class Iphone1415ProOneScreen extends StatelessWidget {
  const Iphone1415ProOneScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<Iphone1415ProOneBloc>(
        create: (context) => Iphone1415ProOneBloc(Iphone1415ProOneState(
            iphone1415ProOneModelObj: Iphone1415ProOneModel()))
          ..add(Iphone1415ProOneInitialEvent()),
        child: Iphone1415ProOneScreen());
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<Iphone1415ProOneBloc, Iphone1415ProOneState>(
        builder: (context, state) {
      return SafeArea(
          child: Scaffold(
              appBar: _buildAppBar(context),
              body: SizedBox(
                  width: double.maxFinite,
                  child: Column(children: [
                    CustomImageView(
                        imagePath: ImageConstant.imgSystemBarsSta,
                        height: 61.v,
                        width: 393.h),
                    Container(
                        height: 773.v,
                        width: double.maxFinite,
                        padding: EdgeInsets.symmetric(vertical: 39.v),
                        child: Stack(alignment: Alignment.topCenter, children: [
                          CustomImageView(
                              imagePath: ImageConstant.imgImage4,
                              height: 639.v,
                              width: 393.h,
                              alignment: Alignment.topCenter),
                          _buildRowTwo(context)
                        ]))
                  ]))));
    });
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        height: 18.v,
        leadingWidth: double.maxFinite,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgArrowLeft,
            margin: EdgeInsets.only(left: 10.h, right: 358.h),
            onTap: () {
              onTapArrowLeft(context);
            }));
  }

  /// Section Widget
  Widget _buildRowTwo(BuildContext context) {
    return Align(
        alignment: Alignment.topCenter,
        child: Container(
            width: double.maxFinite,
            margin: EdgeInsets.only(top: 274.v, bottom: 372.v),
            padding: EdgeInsets.symmetric(horizontal: 6.h),
            decoration: AppDecoration.outlineGray600,
            child: Row(children: [
              Padding(
                  padding: EdgeInsets.only(top: 16.v, bottom: 15.v),
                  child: Text("lbl_1377".tr,
                      style: CustomTextStyles.bodyMediumInterGray60002)),
              Padding(
                  padding: EdgeInsets.only(left: 10.h),
                  child: SizedBox(
                      height: 49.v,
                      child: VerticalDivider(
                          width: 1.h,
                          thickness: 1.v,
                          color: appTheme.gray500))),
              Container(
                  width: 63.h,
                  margin: EdgeInsets.only(left: 7.h, top: 9.v, bottom: 5.v),
                  child: Text("lbl_pashmina_shawl".tr,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.center,
                      style: CustomTextStyles.bodyMediumInterGray60002)),
              Padding(
                  padding: EdgeInsets.only(left: 7.h),
                  child: SizedBox(
                      height: 49.v,
                      child: VerticalDivider(
                          width: 1.h,
                          thickness: 1.v,
                          color: theme.colorScheme.errorContainer
                              .withOpacity(1)))),
              SizedBox(
                  height: 49.v,
                  child: VerticalDivider(
                      width: 1.h, thickness: 1.v, color: appTheme.gray60003)),
              Spacer(flex: 26),
              Padding(
                  padding: EdgeInsets.only(top: 12.v, bottom: 19.v),
                  child: Text("lbl_red".tr,
                      style: CustomTextStyles.bodyMediumInterGray60002)),
              Spacer(flex: 28),
              SizedBox(
                  height: 49.v,
                  child: VerticalDivider(
                      width: 1.h,
                      thickness: 1.v,
                      color: theme.colorScheme.secondaryContainer)),
              Spacer(flex: 21),
              Padding(
                  padding: EdgeInsets.only(top: 14.v, bottom: 17.v),
                  child: Text("lbl_proccessing".tr,
                      style: CustomTextStyles.bodyMediumInterGray60002)),
              Spacer(flex: 23)
            ])));
  }

  /// Navigates to the previous screen.
  onTapArrowLeft(BuildContext context) {
    NavigatorService.goBack();
  }
}
