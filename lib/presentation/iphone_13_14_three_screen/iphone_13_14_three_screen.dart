import 'bloc/iphone_13_14_three_bloc.dart';
import 'models/iphone_13_14_three_model.dart';
import 'package:flutter/material.dart';
import 'package:virasat/core/app_export.dart';
import 'package:virasat/widgets/app_bar/appbar_leading_image.dart';
import 'package:virasat/widgets/app_bar/custom_app_bar.dart';

class Iphone1314ThreeScreen extends StatelessWidget {
  const Iphone1314ThreeScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<Iphone1314ThreeBloc>(
        create: (context) => Iphone1314ThreeBloc(Iphone1314ThreeState(
            iphone1314ThreeModelObj: Iphone1314ThreeModel()))
          ..add(Iphone1314ThreeInitialEvent()),
        child: Iphone1314ThreeScreen());
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<Iphone1314ThreeBloc, Iphone1314ThreeState>(
        builder: (context, state) {
      return SafeArea(
          child: Scaffold(
              appBar: _buildAppBar(context),
              body: Container(
                  width: 390.h,
                  padding: EdgeInsets.symmetric(horizontal: 23.h),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 12.v),
                        CustomImageView(
                            imagePath:
                                ImageConstant.imgWhatsappImage20230205112x119,
                            height: 112.v,
                            width: 119.h,
                            margin: EdgeInsets.only(left: 97.h)),
                        CustomImageView(
                            imagePath:
                                ImageConstant.imgWhatsappImage20230205583x313,
                            height: 583.v,
                            width: 313.h),
                        SizedBox(height: 4.v),
                        CustomImageView(
                            imagePath:
                                ImageConstant.imgWhatsappImage2023020544x279,
                            height: 44.v,
                            width: 279.h)
                      ]))));
    });
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        leadingWidth: 390.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgArrowLeft,
            margin: EdgeInsets.fromLTRB(23.h, 19.v, 342.h, 19.v),
            onTap: () {
              onTapArrowLeft(context);
            }));
  }

  /// Navigates to the previous screen.
  onTapArrowLeft(BuildContext context) {
    NavigatorService.goBack();
  }
}
