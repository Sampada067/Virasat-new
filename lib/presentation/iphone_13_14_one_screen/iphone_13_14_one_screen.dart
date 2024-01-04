import 'bloc/iphone_13_14_one_bloc.dart';
import 'models/iphone_13_14_one_model.dart';
import 'package:flutter/material.dart';
import 'package:virasat/core/app_export.dart';
import 'package:virasat/core/utils/validation_functions.dart';
import 'package:virasat/widgets/app_bar/appbar_leading_image.dart';
import 'package:virasat/widgets/app_bar/custom_app_bar.dart';
import 'package:virasat/widgets/custom_elevated_button.dart';
import 'package:virasat/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class Iphone1314OneScreen extends StatelessWidget {
  Iphone1314OneScreen({Key? key}) : super(key: key);

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  static Widget builder(BuildContext context) {
    return BlocProvider<Iphone1314OneBloc>(
        create: (context) => Iphone1314OneBloc(
            Iphone1314OneState(iphone1314OneModelObj: Iphone1314OneModel()))
          ..add(Iphone1314OneInitialEvent()),
        child: Iphone1314OneScreen());
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            appBar: _buildAppBar(context),
            body: SizedBox(
                width: SizeUtils.width,
                child: SingleChildScrollView(
                    padding: EdgeInsets.only(
                        bottom: MediaQuery.of(context).viewInsets.bottom),
                    child: Form(
                        key: _formKey,
                        child: Container(
                            width: 390.h,
                            padding: EdgeInsets.only(
                                left: 19.h, top: 129.v, right: 19.h),
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                      padding: EdgeInsets.only(left: 13.h),
                                      child: Text("msg_emergency_contacts".tr,
                                          style: CustomTextStyles
                                              .bodyLargeInterErrorContainer16)),
                                  SizedBox(height: 17.v),
                                  Padding(
                                      padding: EdgeInsets.only(left: 94.h),
                                      child: Text("lbl_police_100".tr,
                                          style: CustomTextStyles
                                              .bodyLargeInterErrorContainer)),
                                  SizedBox(height: 6.v),
                                  Padding(
                                      padding: EdgeInsets.only(left: 94.h),
                                      child: Text("lbl_ambulance_101".tr,
                                          style: CustomTextStyles
                                              .bodyLargeInterErrorContainer)),
                                  SizedBox(height: 7.v),
                                  Align(
                                      alignment: Alignment.center,
                                      child: Text("msg_fire_brigade_102".tr,
                                          style: CustomTextStyles
                                              .bodyLargeInterErrorContainer)),
                                  SizedBox(height: 30.v),
                                  Padding(
                                      padding: EdgeInsets.only(left: 9.h),
                                      child: Text("msg_contacts_to_send".tr,
                                          style: CustomTextStyles
                                              .bodyLargeInterErrorContainer)),
                                  SizedBox(height: 6.v),
                                  CustomImageView(
                                      imagePath: ImageConstant
                                          .imgWhatsappImage2023020571x294,
                                      height: 71.v,
                                      width: 294.h),
                                  SizedBox(height: 81.v),
                                  Container(
                                      width: 310.h,
                                      margin: EdgeInsets.only(
                                          left: 9.h, right: 32.h),
                                      child: Text("msg_call_will_be_placed".tr,
                                          maxLines: 2,
                                          overflow: TextOverflow.ellipsis,
                                          style: CustomTextStyles
                                              .bodyMediumInterErrorContainer)),
                                  SizedBox(height: 18.v),
                                  Align(
                                      alignment: Alignment.center,
                                      child: Padding(
                                          padding: EdgeInsets.only(
                                              left: 34.h, right: 23.h),
                                          child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                Padding(
                                                    padding: EdgeInsets.only(
                                                        top: 16.v),
                                                    child: BlocSelector<
                                                            Iphone1314OneBloc,
                                                            Iphone1314OneState,
                                                            TextEditingController?>(
                                                        selector: (state) => state
                                                            .numberController,
                                                        builder: (context,
                                                            numberController) {
                                                          return CustomTextFormField(
                                                              width: 185.h,
                                                              controller:
                                                                  numberController,
                                                              hintText:
                                                                  "lbl_number"
                                                                      .tr,
                                                              textInputAction:
                                                                  TextInputAction
                                                                      .done,
                                                              textInputType:
                                                                  TextInputType
                                                                      .number,
                                                              validator:
                                                                  (value) {
                                                                if (!isNumeric(
                                                                    value)) {
                                                                  return "err_msg_please_enter_valid_number"
                                                                      .tr;
                                                                }
                                                                return null;
                                                              },
                                                              contentPadding:
                                                                  EdgeInsets.symmetric(
                                                                      horizontal:
                                                                          4.h),
                                                              borderDecoration:
                                                                  TextFormFieldStyleHelper
                                                                      .underLineErrorContainer,
                                                              filled: false);
                                                        })),
                                                CustomElevatedButton(
                                                    height: 46.v,
                                                    width: 86.h,
                                                    text: "lbl_add".tr,
                                                    margin: EdgeInsets.only(
                                                        left: 22.h),
                                                    buttonTextStyle:
                                                        CustomTextStyles
                                                            .titleLargeInterWhiteA70002)
                                              ]))),
                                  SizedBox(height: 5.v)
                                ])))))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        leadingWidth: 390.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgArrowLeft,
            margin: EdgeInsets.fromLTRB(28.h, 19.v, 337.h, 19.v),
            onTap: () {
              onTapArrowLeft(context);
            }));
  }

  /// Navigates to the previous screen.
  onTapArrowLeft(BuildContext context) {
    NavigatorService.goBack();
  }
}
