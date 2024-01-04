import 'bloc/iphone_14_pro_ten_bloc.dart';
import 'models/iphone_14_pro_ten_model.dart';
import 'package:flutter/material.dart';
import 'package:virasat/core/app_export.dart';
import 'package:virasat/widgets/app_bar/appbar_leading_image.dart';
import 'package:virasat/widgets/app_bar/appbar_title.dart';
import 'package:virasat/widgets/app_bar/appbar_title_image.dart';
import 'package:virasat/widgets/app_bar/custom_app_bar.dart';

class Iphone14ProTenScreen extends StatelessWidget {
  const Iphone14ProTenScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<Iphone14ProTenBloc>(
        create: (context) => Iphone14ProTenBloc(
            Iphone14ProTenState(iphone14ProTenModelObj: Iphone14ProTenModel()))
          ..add(Iphone14ProTenInitialEvent()),
        child: Iphone14ProTenScreen());
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<Iphone14ProTenBloc, Iphone14ProTenState>(
        builder: (context, state) {
      return SafeArea(
          child: Scaffold(
              body: SizedBox(
                  height: SizeUtils.height,
                  width: double.maxFinite,
                  child: Stack(alignment: Alignment.bottomCenter, children: [
                    Align(
                        alignment: Alignment.center,
                        child: SizedBox(
                            height: SizeUtils.height,
                            width: double.maxFinite,
                            child: Stack(
                                alignment: Alignment.topCenter,
                                children: [
                                  CustomImageView(
                                      imagePath:
                                          ImageConstant.imgRectangle7127x393,
                                      height: 127.v,
                                      width: 393.h,
                                      alignment: Alignment.topCenter),
                                  _buildAppBar(context)
                                ]))),
                    CustomImageView(
                        imagePath: ImageConstant.imgEzgif2,
                        height: 744.v,
                        width: 393.h,
                        alignment: Alignment.bottomCenter)
                  ]))));
    });
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        height: 96.v,
        leadingWidth: 55.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgArrowLeft,
            margin: EdgeInsets.only(left: 30.h, top: 3.v, bottom: 5.v),
            onTap: () {
              onTapArrowLeft(context);
            }),
        title: Padding(
            padding: EdgeInsets.only(left: 35.h),
            child: Row(children: [
              AppbarTitleImage(
                  imagePath: ImageConstant.img7c2bacf83a09e83,
                  margin: EdgeInsets.only(top: 21.v, bottom: 4.v)),
              AppbarTitle(
                  text: "lbl_try_ar".tr, margin: EdgeInsets.only(left: 62.h))
            ])));
  }

  /// Navigates to the previous screen.
  onTapArrowLeft(BuildContext context) {
    NavigatorService.goBack();
  }
}
