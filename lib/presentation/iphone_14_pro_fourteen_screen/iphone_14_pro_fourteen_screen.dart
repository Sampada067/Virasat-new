import 'bloc/iphone_14_pro_fourteen_bloc.dart';
import 'models/iphone_14_pro_fourteen_model.dart';
import 'package:flutter/material.dart';
import 'package:virasat/core/app_export.dart';
import 'package:virasat/presentation/iphone_14_pro_eleven_page/iphone_14_pro_eleven_page.dart';
import 'package:virasat/presentation/iphone_14_pro_twelve_page/iphone_14_pro_twelve_page.dart';
import 'package:virasat/widgets/custom_bottom_bar.dart';
import 'package:virasat/widgets/custom_elevated_button.dart';
import 'package:virasat/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class Iphone14ProFourteenScreen extends StatelessWidget {
  Iphone14ProFourteenScreen({Key? key}) : super(key: key);

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  static Widget builder(BuildContext context) {
    return BlocProvider<Iphone14ProFourteenBloc>(
        create: (context) => Iphone14ProFourteenBloc(Iphone14ProFourteenState(
            iphone14ProFourteenModelObj: Iphone14ProFourteenModel()))
          ..add(Iphone14ProFourteenInitialEvent()),
        child: Iphone14ProFourteenScreen());
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            body: SizedBox(
                width: double.maxFinite,
                child: Column(children: [
                  CustomImageView(
                      imagePath: ImageConstant.imgSystemBarsSta,
                      height: 61.v,
                      width: 393.h),
                  SizedBox(height: 9.v),
                  CustomImageView(
                      imagePath: ImageConstant.imgArrowLeft,
                      height: 18.v,
                      width: 25.h,
                      alignment: Alignment.centerRight,
                      margin: EdgeInsets.only(right: 34.h)),
                  SizedBox(height: 35.v),
                  CustomImageView(
                      imagePath: ImageConstant.imgNoItemFoundHere,
                      height: 183.v,
                      width: 259.h),
                  SizedBox(height: 40.v),
                  Padding(
                      padding: EdgeInsets.only(left: 29.h, right: 20.h),
                      child: BlocSelector<Iphone14ProFourteenBloc,
                              Iphone14ProFourteenState, TextEditingController?>(
                          selector: (state) => state.promoCodeController,
                          builder: (context, promoCodeController) {
                            return CustomTextFormField(
                                controller: promoCodeController,
                                hintText: "lbl_promo_code".tr,
                                hintStyle: CustomTextStyles.bodyLargeBlack900,
                                textInputAction: TextInputAction.done);
                          })),
                  SizedBox(height: 28.v),
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                          padding: EdgeInsets.only(left: 49.h, right: 63.h),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                    padding: EdgeInsets.only(bottom: 1.v),
                                    child: Text("lbl_total".tr,
                                        style: CustomTextStyles
                                            .bodyLargeBlack900)),
                                Text("lbl_0".tr,
                                    style: CustomTextStyles
                                        .bodyLargeErrorContainer_1)
                              ]))),
                  SizedBox(height: 27.v),
                  CustomElevatedButton(
                      text: "lbl_checkout".tr,
                      margin: EdgeInsets.only(left: 60.h, right: 39.h),
                      buttonStyle: CustomButtonStyles.fillErrorContainer,
                      buttonTextStyle: CustomTextStyles.bodyLargeWhiteA7000219,
                      onPressed: () {
                        onTapCheckout(context);
                      },
                      alignment: Alignment.centerRight),
                  SizedBox(height: 5.v)
                ])),
            bottomNavigationBar: _buildBottomBar(context)));
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

  /// Navigates to the iphone14ProFifteenScreen when the action is triggered.
  onTapCheckout(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.iphone14ProFifteenScreen,
    );
  }
}
