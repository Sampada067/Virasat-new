import 'bloc/iphone_14_pro_fifteen_bloc.dart';
import 'models/iphone_14_pro_fifteen_model.dart';
import 'package:flutter/material.dart';
import 'package:virasat/core/app_export.dart';
import 'package:virasat/core/utils/validation_functions.dart';
import 'package:virasat/presentation/iphone_14_pro_eleven_page/iphone_14_pro_eleven_page.dart';
import 'package:virasat/presentation/iphone_14_pro_twelve_page/iphone_14_pro_twelve_page.dart';
import 'package:virasat/widgets/custom_bottom_bar.dart';
import 'package:virasat/widgets/custom_elevated_button.dart';
import 'package:virasat/widgets/custom_text_form_field.dart';

class Iphone14ProFifteenScreen extends StatelessWidget {
  Iphone14ProFifteenScreen({Key? key})
      : super(
          key: key,
        );

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  static Widget builder(BuildContext context) {
    return BlocProvider<Iphone14ProFifteenBloc>(
      create: (context) => Iphone14ProFifteenBloc(Iphone14ProFifteenState(
        iphone14ProFifteenModelObj: Iphone14ProFifteenModel(),
      ))
        ..add(Iphone14ProFifteenInitialEvent()),
      child: Iphone14ProFifteenScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: SizedBox(
          width: SizeUtils.width,
          child: SingleChildScrollView(
            padding: EdgeInsets.only(
              bottom: MediaQuery.of(context).viewInsets.bottom,
            ),
            child: Form(
              key: _formKey,
              child: SizedBox(
                width: double.maxFinite,
                child: Column(
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgSystemBarsSta,
                      height: 61.v,
                      width: 393.h,
                    ),
                    SizedBox(height: 9.v),
                    CustomImageView(
                      imagePath: ImageConstant.imgArrowLeft,
                      height: 18.v,
                      width: 25.h,
                      alignment: Alignment.centerRight,
                      margin: EdgeInsets.only(right: 34.h),
                    ),
                    SizedBox(height: 35.v),
                    _buildOrderSummary(context),
                    SizedBox(height: 24.v),
                    _buildContactInfo(context),
                    SizedBox(height: 20.v),
                    CustomImageView(
                      imagePath: ImageConstant.imgImage3,
                      height: 307.v,
                      width: 348.h,
                    ),
                    SizedBox(height: 32.v),
                    CustomElevatedButton(
                      text: "lbl_complete_order".tr,
                      margin: EdgeInsets.only(
                        left: 45.h,
                        right: 54.h,
                      ),
                      buttonStyle: CustomButtonStyles.fillErrorContainer,
                      buttonTextStyle: CustomTextStyles.bodyLargeWhiteA7000219,
                    ),
                    SizedBox(height: 5.v),
                  ],
                ),
              ),
            ),
          ),
        ),
        bottomNavigationBar: _buildBottomBar(context),
      ),
    );
  }

  /// Section Widget
  Widget _buildOrderSummary(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        left: 26.h,
        right: 23.h,
      ),
      padding: EdgeInsets.symmetric(
        horizontal: 20.h,
        vertical: 7.v,
      ),
      decoration: AppDecoration.outlineErrorContainer.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder4,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: EdgeInsets.only(top: 4.v),
            child: Text(
              "msg_show_summary_order".tr,
              style: CustomTextStyles.bodyLargeBlack900,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              top: 2.v,
              right: 1.h,
            ),
            child: Text(
              "lbl_0".tr,
              style: CustomTextStyles.bodyLargeErrorContainer_1,
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildContactInfo(BuildContext context) {
    return Container(
      width: 344.h,
      margin: EdgeInsets.symmetric(horizontal: 24.h),
      padding: EdgeInsets.symmetric(
        horizontal: 18.h,
        vertical: 10.v,
      ),
      decoration: AppDecoration.outlineErrorContainer.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder4,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "lbl_contact".tr,
            style: CustomTextStyles.bodyLargeBluegray700,
          ),
          SizedBox(height: 4.v),
          Padding(
            padding: EdgeInsets.only(right: 8.h),
            child: BlocSelector<Iphone14ProFifteenBloc, Iphone14ProFifteenState,
                TextEditingController?>(
              selector: (state) => state.emailController,
              builder: (context, emailController) {
                return CustomTextFormField(
                  controller: emailController,
                  hintText: "msg_mahumadnaik23_gmail_com".tr,
                  hintStyle: CustomTextStyles.bodyLargeBlack900,
                  textInputAction: TextInputAction.done,
                  textInputType: TextInputType.emailAddress,
                  validator: (value) {
                    if (value == null ||
                        (!isValidEmail(value, isRequired: true))) {
                      return "err_msg_please_enter_valid_email".tr;
                    }
                    return null;
                  },
                  contentPadding: EdgeInsets.symmetric(horizontal: 3.h),
                  borderDecoration:
                      TextFormFieldStyleHelper.underLineErrorContainer,
                  filled: false,
                );
              },
            ),
          ),
          SizedBox(height: 10.v),
          Text(
            "lbl_address".tr,
            style: CustomTextStyles.bodyLargeBluegray700,
          ),
          SizedBox(height: 2.v),
          Container(
            width: 254.h,
            margin: EdgeInsets.only(
              left: 6.h,
              right: 45.h,
            ),
            child: Text(
              "msg_sanjay_nagar_g".tr,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: CustomTextStyles.bodyLargeBlack900,
            ),
          ),
          SizedBox(height: 14.v),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildBottomBar(BuildContext context) {
    return CustomBottomBar(
      onChanged: (BottomBarEnum type) {
        Navigator.pushNamed(
            navigatorKey.currentContext!, getCurrentRoute(type));
      },
    );
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
}
