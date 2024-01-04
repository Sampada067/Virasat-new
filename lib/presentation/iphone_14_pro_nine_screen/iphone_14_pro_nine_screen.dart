import 'bloc/iphone_14_pro_nine_bloc.dart';
import 'models/iphone_14_pro_nine_model.dart';
import 'package:flutter/material.dart';
import 'package:virasat/core/app_export.dart';
import 'package:virasat/presentation/iphone_14_pro_eleven_page/iphone_14_pro_eleven_page.dart';
import 'package:virasat/presentation/iphone_14_pro_twelve_page/iphone_14_pro_twelve_page.dart';
import 'package:virasat/widgets/app_bar/appbar_leading_image.dart';
import 'package:virasat/widgets/app_bar/appbar_title_image.dart';
import 'package:virasat/widgets/app_bar/appbar_trailing_iconbutton.dart';
import 'package:virasat/widgets/app_bar/custom_app_bar.dart';
import 'package:virasat/widgets/custom_bottom_bar.dart';
import 'package:virasat/widgets/custom_elevated_button.dart';

// ignore_for_file: must_be_immutable
class Iphone14ProNineScreen extends StatelessWidget {
  Iphone14ProNineScreen({Key? key}) : super(key: key);

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  static Widget builder(BuildContext context) {
    return BlocProvider<Iphone14ProNineBloc>(
        create: (context) => Iphone14ProNineBloc(Iphone14ProNineState(
            iphone14ProNineModelObj: Iphone14ProNineModel()))
          ..add(Iphone14ProNineInitialEvent()),
        child: Iphone14ProNineScreen());
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<Iphone14ProNineBloc, Iphone14ProNineState>(
        builder: (context, state) {
      return SafeArea(
          child: Scaffold(
              appBar: _buildAppBar(context),
              body: SizedBox(
                  width: double.maxFinite,
                  child: Column(children: [
                    CustomImageView(
                        imagePath: ImageConstant.imgRectangle7,
                        height: 42.v,
                        width: 393.h),
                    Spacer(flex: 37),
                    CustomImageView(
                        imagePath: ImageConstant.img2eacfa305d7715b,
                        height: 321.v,
                        width: 257.h,
                        alignment: Alignment.centerRight,
                        margin: EdgeInsets.only(right: 54.h)),
                    Spacer(flex: 62),
                    SizedBox(height: 90.v),
                    CustomElevatedButton(
                        height: 31.v,
                        width: 210.h,
                        text: "lbl_start_shopping".tr,
                        buttonStyle: CustomButtonStyles.fillPrimary)
                  ])),
              bottomNavigationBar: _buildBottomBar(context)));
    });
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        height: 92.v,
        leadingWidth: 41.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgArrowLeft,
            margin: EdgeInsets.only(left: 16.h, top: 5.v, bottom: 14.v),
            onTap: () {
              onTapArrowLeft(context);
            }),
        title: AppbarTitleImage(
            imagePath: ImageConstant.img7c2bacf83a09e83,
            margin: EdgeInsets.only(left: 49.h, top: 36.v)),
        actions: [
          AppbarTrailingIconbutton(
              imagePath: ImageConstant.imgCart,
              margin: EdgeInsets.only(left: 12.h, right: 12.h, bottom: 8.v))
        ]);
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
}
