import 'bloc/iphone_13_14_two_bloc.dart';
import 'models/iphone_13_14_two_model.dart';
import 'package:flutter/material.dart';
import 'package:virasat/core/app_export.dart';
import 'package:virasat/widgets/app_bar/appbar_leading_image.dart';
import 'package:virasat/widgets/app_bar/custom_app_bar.dart';
import 'package:virasat/widgets/custom_elevated_button.dart';

class Iphone1314TwoScreen extends StatelessWidget {
  const Iphone1314TwoScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<Iphone1314TwoBloc>(
        create: (context) => Iphone1314TwoBloc(
            Iphone1314TwoState(iphone1314TwoModelObj: Iphone1314TwoModel()))
          ..add(Iphone1314TwoInitialEvent()),
        child: Iphone1314TwoScreen());
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<Iphone1314TwoBloc, Iphone1314TwoState>(
        builder: (context, state) {
      return SafeArea(
          child: Scaffold(
              appBar: _buildAppBar(context),
              body: Container(
                  width: 390.h,
                  padding: EdgeInsets.only(left: 82.h, top: 122.v, right: 82.h),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                            width: 202.h,
                            margin: EdgeInsets.only(right: 23.h),
                            child: Text("msg_send_sos_in_emergency".tr,
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                                style: CustomTextStyles
                                    .headlineLargeErrorContainer)),
                        SizedBox(height: 69.v),
                        CustomElevatedButton(
                            height: 51.v,
                            text: "msg_start_sms_alerts".tr,
                            margin: EdgeInsets.only(right: 31.h),
                            buttonTextStyle:
                                CustomTextStyles.bodyLargeInterWhiteA70002),
                        SizedBox(height: 39.v),
                        CustomElevatedButton(
                            height: 51.v,
                            text: "lbl_stop_sms_alerts".tr,
                            margin: EdgeInsets.only(left: 8.h, right: 38.h),
                            buttonTextStyle:
                                CustomTextStyles.bodyLargeInterWhiteA70002),
                        SizedBox(height: 5.v)
                      ]))));
    });
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        leadingWidth: 390.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgArrowLeft,
            margin: EdgeInsets.fromLTRB(20.h, 19.v, 345.h, 19.v),
            onTap: () {
              onTapArrowLeft(context);
            }));
  }

  /// Navigates to the previous screen.
  onTapArrowLeft(BuildContext context) {
    NavigatorService.goBack();
  }
}
