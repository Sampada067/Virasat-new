import 'bloc/iphone_14_pro_four_bloc.dart';
import 'models/iphone_14_pro_four_model.dart';
import 'package:flutter/material.dart';
import 'package:virasat/core/app_export.dart';
import 'package:virasat/presentation/iphone_14_pro_eleven_page/iphone_14_pro_eleven_page.dart';
import 'package:virasat/presentation/iphone_14_pro_twelve_page/iphone_14_pro_twelve_page.dart';
import 'package:virasat/widgets/custom_bottom_bar.dart';
import 'package:virasat/widgets/custom_outlined_button.dart';
import 'package:virasat/widgets/custom_rating_bar.dart';

// ignore_for_file: must_be_immutable
class Iphone14ProFourScreen extends StatelessWidget {
  Iphone14ProFourScreen({Key? key}) : super(key: key);

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  static Widget builder(BuildContext context) {
    return BlocProvider<Iphone14ProFourBloc>(
        create: (context) => Iphone14ProFourBloc(Iphone14ProFourState(
            iphone14ProFourModelObj: Iphone14ProFourModel()))
          ..add(Iphone14ProFourInitialEvent()),
        child: Iphone14ProFourScreen());
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<Iphone14ProFourBloc, Iphone14ProFourState>(
        builder: (context, state) {
      return SafeArea(
          child: Scaffold(
              body: SizedBox(
                  width: double.maxFinite,
                  child: Column(children: [
                    _buildSixtySevenStack(context),
                    _buildFiftySixRow(context),
                    _buildDownloadSixStack(context),
                    SizedBox(height: 12.v),
                    _buildColorClassicRow(context),
                    SizedBox(height: 17.v),
                    _buildFortyFourColumn(context),
                    SizedBox(height: 42.v),
                    CustomOutlinedButton(
                        text: "lbl_try_ar".tr,
                        margin: EdgeInsets.only(left: 28.h, right: 41.h),
                        buttonStyle: CustomButtonStyles.outlineErrorContainer,
                        alignment: Alignment.centerLeft),
                    SizedBox(height: 26.v),
                    CustomOutlinedButton(
                        text: "lbl_buy_now".tr,
                        margin: EdgeInsets.only(left: 28.h, right: 41.h),
                        buttonStyle:
                            CustomButtonStyles.outlineErrorContainerTL18,
                        onPressed: () {
                          onTapBuyNow(context);
                        },
                        alignment: Alignment.centerLeft),
                    SizedBox(height: 5.v)
                  ])),
              bottomNavigationBar: _buildBottomBar(context)));
    });
  }

  /// Section Widget
  Widget _buildSixtySevenStack(BuildContext context) {
    return SizedBox(
        height: 94.v,
        width: double.maxFinite,
        child: Stack(alignment: Alignment.bottomCenter, children: [
          CustomImageView(
              imagePath: ImageConstant.imgRectangle2,
              height: 94.v,
              width: 393.h,
              alignment: Alignment.center),
          Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                  padding: EdgeInsets.only(bottom: 12.v),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CustomImageView(
                            imagePath: ImageConstant.imgArrowLeft,
                            height: 18.v,
                            width: 25.h,
                            margin: EdgeInsets.only(top: 9.v, bottom: 8.v),
                            onTap: () {
                              onTapImgArrowLeft(context);
                            }),
                        Container(
                            height: 35.v,
                            width: 299.h,
                            margin: EdgeInsets.only(left: 12.h),
                            decoration: BoxDecoration(
                                color: appTheme.whiteA70002,
                                borderRadius: BorderRadius.circular(7.h),
                                border: Border.all(
                                    color: theme.colorScheme.errorContainer
                                        .withOpacity(1),
                                    width: 1.h),
                                boxShadow: [
                                  BoxShadow(
                                      color: theme.colorScheme.errorContainer
                                          .withOpacity(0.25),
                                      spreadRadius: 2.h,
                                      blurRadius: 2.h,
                                      offset: Offset(2, 5))
                                ])),
                        CustomImageView(
                            imagePath: ImageConstant.imgPhMicrophone,
                            height: 21.adaptSize,
                            width: 21.adaptSize,
                            margin: EdgeInsets.only(
                                left: 8.h, top: 8.v, bottom: 6.v))
                      ])))
        ]));
  }

  /// Section Widget
  Widget _buildFiftySixRow(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 13.h, vertical: 6.v),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                  padding: EdgeInsets.only(top: 4.v),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("lbl_brand_shawl".tr,
                            style: CustomTextStyles.bodySmallInriaSansTeal700),
                        Text("msg_classic_color_pure".tr,
                            style: CustomTextStyles.bodySmall11)
                      ])),
              Container(
                  height: 19.v,
                  width: 74.h,
                  margin: EdgeInsets.only(top: 4.v, right: 6.h, bottom: 8.v),
                  child: Stack(alignment: Alignment.topRight, children: [
                    CustomRatingBar(alignment: Alignment.bottomLeft),
                    Align(
                        alignment: Alignment.topRight,
                        child: Text("lbl_43".tr,
                            style: CustomTextStyles.bodySmall11))
                  ]))
            ]));
  }

  /// Section Widget
  Widget _buildDownloadSixStack(BuildContext context) {
    return SizedBox(
        height: 259.v,
        width: 392.h,
        child: Stack(alignment: Alignment.center, children: [
          CustomImageView(
              imagePath: ImageConstant.imgRectangle7258x392,
              height: 258.v,
              width: 392.h,
              alignment: Alignment.center),
          CustomImageView(
              imagePath: ImageConstant.imgDownload6,
              height: 258.v,
              width: 392.h,
              alignment: Alignment.center)
        ]));
  }

  /// Section Widget
  Widget _buildColorClassicRow(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 13.h, right: 9.h),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                Text("msg_color_classic".tr,
                    style: CustomTextStyles.bodySmall11),
                SizedBox(height: 10.v),
                Text("lbl_m_r_p_7_500".tr,
                    style: CustomTextStyles.titleLargeIndigoA70004)
              ]),
              Container(
                  height: 33.v,
                  width: 70.h,
                  margin: EdgeInsets.only(top: 7.v, bottom: 10.v),
                  child: Stack(alignment: Alignment.bottomLeft, children: [
                    Align(
                        alignment: Alignment.topRight,
                        child: Text("lbl_43".tr,
                            style: CustomTextStyles.bodySmall11)),
                    Align(
                        alignment: Alignment.bottomLeft,
                        child: Padding(
                            padding: EdgeInsets.only(left: 11.h),
                            child: Text("lbl_reviews".tr,
                                style: CustomTextStyles.bodySmall10))),
                    CustomImageView(
                        imagePath: ImageConstant.imgDownload9,
                        height: 12.v,
                        width: 68.h,
                        alignment: Alignment.topLeft,
                        margin: EdgeInsets.only(top: 8.v))
                  ]))
            ]));
  }

  /// Section Widget
  Widget _buildFortyFourColumn(BuildContext context) {
    return Align(
        alignment: Alignment.centerLeft,
        child: Container(
            margin: EdgeInsets.only(left: 13.h, right: 30.h),
            padding: EdgeInsets.symmetric(horizontal: 14.h, vertical: 7.v),
            decoration: AppDecoration.outlineGray400
                .copyWith(borderRadius: BorderRadiusStyle.roundedBorder13),
            child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("lbl_description".tr,
                      style: CustomTextStyles.bodySmall12
                          .copyWith(decoration: TextDecoration.underline)),
                  SizedBox(height: 14.v),
                  SizedBox(
                      width: 315.h,
                      child: Text("msg_the_pashmina_shawl".tr,
                          maxLines: 3,
                          overflow: TextOverflow.ellipsis,
                          style: CustomTextStyles.bodySmall11)),
                  SizedBox(height: 17.v)
                ])));
  }

  /// Section Widget
  Widget _buildBottomBar(BuildContext context) {
    return CustomBottomBar(onChanged: (BottomBarEnum type) {
      Navigator.pushNamed(navigatorKey.currentContext!, getCurrentRoute(type));
    });
  }

  ///Handling route based on bottom click actions
  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Home:
        return AppRoutes.iphone14ProTwelvePage;
      case BottomBarEnum.Addproduct:
        return AppRoutes.iphone14ProElevenPage;
      case BottomBarEnum.Menu:
        return "/";
      default:
        return "/";
    }
  }

  ///Handling page based on route
  Widget getCurrentPage(
    BuildContext context,
    String currentRoute,
  ) {
    switch (currentRoute) {
      case AppRoutes.iphone14ProTwelvePage:
        return Iphone14ProTwelvePage();
      case AppRoutes.iphone14ProElevenPage:
        return Iphone14ProElevenPage();
      default:
        return DefaultWidget();
    }
  }

  /// Navigates to the previous screen.
  onTapImgArrowLeft(BuildContext context) {
    NavigatorService.goBack();
  }

  /// Navigates to the iphone14ProFourteenScreen when the action is triggered.
  onTapBuyNow(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.iphone14ProFourteenScreen,
    );
  }
}
