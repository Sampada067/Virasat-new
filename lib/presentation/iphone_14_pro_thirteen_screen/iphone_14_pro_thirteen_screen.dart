import 'bloc/iphone_14_pro_thirteen_bloc.dart';
import 'models/iphone_14_pro_thirteen_model.dart';
import 'package:flutter/material.dart';
import 'package:virasat/core/app_export.dart';
import 'package:virasat/presentation/iphone_14_pro_eleven_page/iphone_14_pro_eleven_page.dart';
import 'package:virasat/presentation/iphone_14_pro_twelve_page/iphone_14_pro_twelve_page.dart';
import 'package:virasat/widgets/app_bar/appbar_subtitle_one.dart';
import 'package:virasat/widgets/app_bar/appbar_trailing_image.dart';
import 'package:virasat/widgets/app_bar/custom_app_bar.dart';
import 'package:virasat/widgets/custom_bottom_bar.dart';
import 'package:virasat/widgets/custom_elevated_button.dart';
import 'package:virasat/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class Iphone14ProThirteenScreen extends StatelessWidget {
  Iphone14ProThirteenScreen({Key? key}) : super(key: key);

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  static Widget builder(BuildContext context) {
    return BlocProvider<Iphone14ProThirteenBloc>(
        create: (context) => Iphone14ProThirteenBloc(Iphone14ProThirteenState(
            iphone14ProThirteenModelObj: Iphone14ProThirteenModel()))
          ..add(Iphone14ProThirteenInitialEvent()),
        child: Iphone14ProThirteenScreen());
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            body: SizedBox(
                width: double.maxFinite,
                child: Column(children: [
                  SizedBox(height: 70.v),
                  _buildCategoryValue(context),
                  Expanded(
                      child: Column(children: [
                    CustomImageView(
                        imagePath: ImageConstant.imgSystemBarsSta,
                        height: 61.v,
                        width: 393.h),
                    Spacer(),
                    _buildTags(context),
                    SizedBox(height: 17.v),
                    _buildWidget(context),
                    SizedBox(height: 15.v),
                    _buildName(context),
                    SizedBox(height: 17.v),
                    _buildProductDescriptionValue(context),
                    SizedBox(height: 12.v),
                    _buildPrice(context),
                    SizedBox(height: 21.v)
                  ]))
                ])),
            bottomNavigationBar: _buildBottomBar(context)));
  }

  /// Section Widget
  Widget _buildCategoryValue(BuildContext context) {
    return Column(children: [
      CustomAppBar(
          height: 28.v,
          title: AppbarSubtitleOne(
              text: "lbl_category".tr, margin: EdgeInsets.only(left: 22.h)),
          actions: [
            AppbarTrailingImage(
                imagePath: ImageConstant.imgArrowLeft,
                margin: EdgeInsets.only(left: 34.h, right: 34.h, bottom: 10.v))
          ]),
      SizedBox(height: 7.v),
      Padding(
          padding: EdgeInsets.only(left: 22.h, right: 27.h),
          child: BlocSelector<Iphone14ProThirteenBloc, Iphone14ProThirteenState,
                  TextEditingController?>(
              selector: (state) => state.categoryvalueController,
              builder: (context, categoryvalueController) {
                return CustomTextFormField(
                    controller: categoryvalueController,
                    hintText: "lbl_enter_category".tr,
                    borderDecoration: TextFormFieldStyleHelper.fillGray,
                    fillColor: appTheme.gray200);
              }))
    ]);
  }

  /// Section Widget
  Widget _buildTags(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 22.h),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text("lbl_tags".tr,
              style: CustomTextStyles.bodyMediumBrawlerGray80002),
          SizedBox(height: 7.v),
          Container(
              padding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 10.v),
              decoration: AppDecoration.fillGray
                  .copyWith(borderRadius: BorderRadiusStyle.roundedBorder10),
              child:
                  Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
                Padding(
                    padding: EdgeInsets.only(top: 1.v, bottom: 4.v),
                    child: Text("lbl_clothing".tr,
                        style: CustomTextStyles.bodyMediumBrawlerIndigoA700)),
                Padding(
                    padding: EdgeInsets.only(left: 10.h, bottom: 4.v),
                    child: Text("lbl_tradition".tr,
                        style: CustomTextStyles.bodyMediumBrawlerIndigoA700))
              ]))
        ]));
  }

  /// Section Widget
  Widget _buildWidget(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 21.h),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text("lbl_add_images".tr,
              style: CustomTextStyles.bodyMediumBrawlerGray80002),
          SizedBox(height: 17.v),
          Container(
              margin: EdgeInsets.only(right: 5.h),
              padding: EdgeInsets.symmetric(horizontal: 82.h, vertical: 36.v),
              decoration: AppDecoration.outlineErrorContainer
                  .copyWith(borderRadius: BorderRadiusStyle.roundedBorder19),
              child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(height: 3.v),
                    CustomImageView(
                        imagePath: ImageConstant.imgImage1,
                        height: 93.v,
                        width: 177.h)
                  ]))
        ]));
  }

  /// Section Widget
  Widget _buildName(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 22.h),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text("lbl_product_name".tr,
              style: CustomTextStyles.bodyMediumBrawlerGray80002),
          SizedBox(height: 13.v),
          Padding(
              padding: EdgeInsets.only(left: 3.h, right: 16.h),
              child: BlocSelector<Iphone14ProThirteenBloc,
                      Iphone14ProThirteenState, TextEditingController?>(
                  selector: (state) => state.nameController,
                  builder: (context, nameController) {
                    return CustomTextFormField(
                        controller: nameController,
                        hintText: "msg_pashmina_shawl".tr);
                  }))
        ]));
  }

  /// Section Widget
  Widget _buildProductDescriptionValue(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 22.h),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text("msg_product_description".tr,
              style: CustomTextStyles.bodyMediumBrawlerGray80002),
          SizedBox(height: 6.v),
          Padding(
              padding: EdgeInsets.only(left: 3.h),
              child: BlocSelector<Iphone14ProThirteenBloc,
                      Iphone14ProThirteenState, TextEditingController?>(
                  selector: (state) => state.productDescriptionvalueController,
                  builder: (context, productDescriptionvalueController) {
                    return CustomTextFormField(
                        controller: productDescriptionvalueController,
                        hintText: "msg_luxurious_pashmina".tr,
                        hintStyle: CustomTextStyles.bodySmallGray70004,
                        textInputAction: TextInputAction.done,
                        maxLines: 3,
                        contentPadding: EdgeInsets.symmetric(
                            horizontal: 22.h, vertical: 29.v));
                  }))
        ]));
  }

  /// Section Widget
  Widget _buildPrice(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 22.h),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text("lbl_price".tr,
              style: CustomTextStyles.bodyMediumBrawlerGray80002),
          SizedBox(height: 13.v),
          Padding(
              padding: EdgeInsets.only(right: 2.h),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                        decoration: AppDecoration.outlineGray60004.copyWith(
                            borderRadius: BorderRadiusStyle.roundedBorder7),
                        child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              CustomElevatedButton(
                                  width: 47.h,
                                  text: "lbl".tr,
                                  margin: EdgeInsets.only(bottom: 1.v),
                                  buttonStyle: CustomButtonStyles.fillBlueGray,
                                  buttonTextStyle: CustomTextStyles
                                      .bodyLargeErrorContainer19),
                              Padding(
                                  padding: EdgeInsets.only(
                                      left: 22.h, top: 8.v, bottom: 11.v),
                                  child: Text("lbl_1172".tr,
                                      style:
                                          CustomTextStyles.bodyLargeGray80002))
                            ])),
                    CustomElevatedButton(
                        width: 128.h,
                        text: "lbl_add2".tr,
                        buttonStyle: CustomButtonStyles.fillIndigoA,
                        buttonTextStyle: CustomTextStyles.bodyLargeWhiteA70002,
                        onPressed: () {
                          onTapAdd(context);
                        })
                  ]))
        ]));
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

  /// Navigates to the iphone1415ProOneScreen when the action is triggered.
  onTapAdd(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.iphone1415ProOneScreen,
    );
  }
}
