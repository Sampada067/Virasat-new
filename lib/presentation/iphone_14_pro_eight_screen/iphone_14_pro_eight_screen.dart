import 'bloc/iphone_14_pro_eight_bloc.dart';
import 'models/iphone_14_pro_eight_model.dart';
import 'package:flutter/material.dart';
import 'package:virasat/core/app_export.dart';
import 'package:virasat/presentation/iphone_14_pro_eleven_page/iphone_14_pro_eleven_page.dart';
import 'package:virasat/presentation/iphone_14_pro_twelve_page/iphone_14_pro_twelve_page.dart';
import 'package:virasat/widgets/app_bar/appbar_subtitle.dart';
import 'package:virasat/widgets/app_bar/appbar_title_image.dart';
import 'package:virasat/widgets/app_bar/custom_app_bar.dart';
import 'package:virasat/widgets/custom_bottom_bar.dart';
import 'package:virasat/widgets/custom_drop_down.dart';

// ignore_for_file: must_be_immutable
class Iphone14ProEightScreen extends StatelessWidget {
  Iphone14ProEightScreen({Key? key}) : super(key: key);

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  static Widget builder(BuildContext context) {
    return BlocProvider<Iphone14ProEightBloc>(
        create: (context) => Iphone14ProEightBloc(Iphone14ProEightState(
            iphone14ProEightModelObj: Iphone14ProEightModel()))
          ..add(Iphone14ProEightInitialEvent()),
        child: Iphone14ProEightScreen());
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(context),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 15.h, vertical: 12.v),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                          padding: EdgeInsets.only(left: 69.h),
                          child: Text("msg_search_by_districts".tr,
                              style: theme.textTheme.headlineSmall!.copyWith(
                                  decoration: TextDecoration.underline))),
                      SizedBox(height: 5.v),
                      Padding(
                          padding: EdgeInsets.only(left: 78.h),
                          child: Text("msg_know_about_products".tr,
                              style: CustomTextStyles.bodySmall12.copyWith(
                                  decoration: TextDecoration.underline))),
                      SizedBox(height: 79.v),
                      _buildSearchSection(context),
                      SizedBox(height: 67.v),
                      _buildDescriptionSection(context),
                      SizedBox(height: 5.v)
                    ])),
            bottomNavigationBar: _buildBottomBar(context)));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        height: 94.v,
        centerTitle: true,
        title: SizedBox(
            height: 94.v,
            width: double.maxFinite,
            child: Stack(children: [
              AppbarTitleImage(imagePath: ImageConstant.imgRectangle2),
              Padding(
                  padding: EdgeInsets.fromLTRB(15.h, 47.v, 336.h, 23.v),
                  child: Row(children: [
                    AppbarTitleImage(
                        imagePath: ImageConstant.imgArrowLeft,
                        margin: EdgeInsets.symmetric(vertical: 3.v),
                        onTap: () {
                          onTapArrowLeft(context);
                        }),
                    AppbarSubtitle(
                        text: "msg_type_me_i_m_a_long".tr,
                        margin: EdgeInsets.only(left: 16.h))
                  ]))
            ])));
  }

  /// Section Widget
  Widget _buildSearchSection(BuildContext context) {
    return Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
              padding: EdgeInsets.only(bottom: 15.v),
              child: Column(children: [
                BlocSelector<Iphone14ProEightBloc, Iphone14ProEightState,
                        Iphone14ProEightModel?>(
                    selector: (state) => state.iphone14ProEightModelObj,
                    builder: (context, iphone14ProEightModelObj) {
                      return CustomDropDown(
                          width: 149.h,
                          icon: Container(
                              margin: EdgeInsets.fromLTRB(30.h, 4.v, 5.h, 4.v),
                              child: CustomImageView(
                                  imagePath: ImageConstant.imgArrowdown,
                                  height: 15.v,
                                  width: 18.h)),
                          hintText: "lbl_srinagar".tr,
                          items:
                              iphone14ProEightModelObj?.dropdownItemList ?? [],
                          onChanged: (value) {
                            context
                                .read<Iphone14ProEightBloc>()
                                .add(ChangeDropDownEvent(value: value));
                          });
                    }),
                SizedBox(height: 26.v),
                CustomImageView(
                    imagePath: ImageConstant.imgDownload7,
                    height: 105.v,
                    width: 112.h,
                    onTap: () {
                      onTapImgDownloadSeven(context);
                    }),
                SizedBox(height: 12.v),
                Text("lbl_pashmina_shawl".tr,
                    style: CustomTextStyles.bodySmall12
                        .copyWith(decoration: TextDecoration.underline)),
                SizedBox(height: 7.v),
                Align(
                    alignment: Alignment.centerRight,
                    child: Padding(
                        padding: EdgeInsets.only(right: 11.h),
                        child: Text("msg_read_about_crafters".tr,
                            style: CustomTextStyles.bodySmallRed600.copyWith(
                                decoration: TextDecoration.underline))))
              ])),
          CustomImageView(
              imagePath: ImageConstant.imgDownload6218x191,
              height: 218.v,
              width: 191.h,
              margin: EdgeInsets.only(top: 3.v))
        ]);
  }

  /// Section Widget
  Widget _buildDescriptionSection(BuildContext context) {
    return Align(
        alignment: Alignment.center,
        child: Container(
            width: 335.h,
            margin: EdgeInsets.only(left: 20.h, right: 8.h),
            padding: EdgeInsets.all(15.h),
            decoration: AppDecoration.outlineGray400
                .copyWith(borderRadius: BorderRadiusStyle.roundedBorder13),
            child: Container(
                width: 291.h,
                margin: EdgeInsets.only(right: 11.h),
                child: Text("msg_the_pashmina_shawl2".tr,
                    maxLines: 7,
                    overflow: TextOverflow.ellipsis,
                    style: CustomTextStyles.bodySmall12))));
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
  onTapArrowLeft(BuildContext context) {
    NavigatorService.goBack();
  }

  /// Navigates to the iphone14ProFourScreen when the action is triggered.
  onTapImgDownloadSeven(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.iphone14ProFourScreen,
    );
  }
}
