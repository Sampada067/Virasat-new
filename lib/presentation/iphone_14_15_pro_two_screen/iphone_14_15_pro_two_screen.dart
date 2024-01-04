import '../iphone_14_15_pro_two_screen/widgets/widgetgrid_item_widget.dart';
import 'bloc/iphone_14_15_pro_two_bloc.dart';
import 'models/iphone_14_15_pro_two_model.dart';
import 'models/widgetgrid_item_model.dart';
import 'package:flutter/material.dart';
import 'package:virasat/core/app_export.dart';
import 'package:virasat/widgets/custom_elevated_button.dart';

class Iphone1415ProTwoScreen extends StatelessWidget {
  const Iphone1415ProTwoScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<Iphone1415ProTwoBloc>(
        create: (context) => Iphone1415ProTwoBloc(Iphone1415ProTwoState(
            iphone1415ProTwoModelObj: Iphone1415ProTwoModel()))
          ..add(Iphone1415ProTwoInitialEvent()),
        child: Iphone1415ProTwoScreen());
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: SizedBox(
                width: double.maxFinite,
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomImageView(
                          imagePath: ImageConstant.imgRectangle7,
                          height: 42.v,
                          width: 393.h),
                      SizedBox(height: 32.v),
                      CustomImageView(
                          imagePath: ImageConstant.imgArrowLeft,
                          height: 18.v,
                          width: 25.h,
                          margin: EdgeInsets.only(left: 20.h),
                          onTap: () {
                            onTapImgArrowLeft(context);
                          }),
                      Spacer(),
                      Padding(
                          padding: EdgeInsets.only(left: 93.h),
                          child: Text("lbl_always_be_a".tr,
                              style: theme.textTheme.displaySmall)),
                      SizedBox(height: 13.v),
                      Padding(
                          padding: EdgeInsets.only(left: 135.h),
                          child: Text("lbl_spark".tr,
                              style: theme.textTheme.displayMedium)),
                      SizedBox(height: 46.v),
                      _buildWidgetGrid(context),
                      SizedBox(height: 59.v),
                      CustomElevatedButton(
                          height: 48.v,
                          width: 144.h,
                          text: "lbl_panic".tr,
                          buttonStyle: CustomButtonStyles.fillRedCc,
                          buttonTextStyle: CustomTextStyles.headlineLarge_1,
                          alignment: Alignment.center),
                      SizedBox(height: 76.v)
                    ]))));
  }

  /// Section Widget
  Widget _buildWidgetGrid(BuildContext context) {
    return Align(
        alignment: Alignment.center,
        child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 44.h),
            child: BlocSelector<Iphone1415ProTwoBloc, Iphone1415ProTwoState,
                    Iphone1415ProTwoModel?>(
                selector: (state) => state.iphone1415ProTwoModelObj,
                builder: (context, iphone1415ProTwoModelObj) {
                  return GridView.builder(
                      shrinkWrap: true,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          mainAxisExtent: 136.v,
                          crossAxisCount: 2,
                          mainAxisSpacing: 11.h,
                          crossAxisSpacing: 11.h),
                      physics: NeverScrollableScrollPhysics(),
                      itemCount:
                          iphone1415ProTwoModelObj?.widgetgridItemList.length ??
                              0,
                      itemBuilder: (context, index) {
                        WidgetgridItemModel model = iphone1415ProTwoModelObj
                                ?.widgetgridItemList[index] ??
                            WidgetgridItemModel();
                        return WidgetgridItemWidget(model,
                            onTapImgWhatsAppImage: () {
                          onTapImgWhatsAppImage(context);
                        });
                      });
                })));
  }

  /// Navigates to the iphone1314OneScreen when the action is triggered.
  onTapImgWhatsAppImage(BuildContext context) {
    NavigatorService.pushNamed(AppRoutes.iphone1314OneScreen);
  }

  /// Navigates to the previous screen.
  onTapImgArrowLeft(BuildContext context) {
    NavigatorService.goBack();
  }
}
