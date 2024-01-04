import 'bloc/iphone_13_14_four_bloc.dart';
import 'models/iphone_13_14_four_model.dart';
import 'package:flutter/material.dart';
import 'package:virasat/core/app_export.dart';
import 'package:virasat/widgets/custom_elevated_button.dart';

class Iphone1314FourScreen extends StatelessWidget {
  const Iphone1314FourScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<Iphone1314FourBloc>(
        create: (context) => Iphone1314FourBloc(
            Iphone1314FourState(iphone1314FourModelObj: Iphone1314FourModel()))
          ..add(Iphone1314FourInitialEvent()),
        child: Iphone1314FourScreen());
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<Iphone1314FourBloc, Iphone1314FourState>(
        builder: (context, state) {
      return SafeArea(
          child: Scaffold(
              body: SizedBox(
                  width: 390.h,
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CustomImageView(
                            imagePath:
                                ImageConstant.imgWhatsappImage20230205301x360,
                            height: 301.v,
                            width: 360.h),
                        SizedBox(height: 53.v),
                        CustomElevatedButton(
                            height: 51.v,
                            width: 180.h,
                            text: "lbl_back".tr,
                            margin: EdgeInsets.only(left: 90.h),
                            buttonTextStyle: theme.textTheme.headlineLarge!,
                            onPressed: () {
                              onTapBACK(context);
                            }),
                        SizedBox(height: 5.v)
                      ]))));
    });
  }

  /// Navigates to the iphone1415ProTwoScreen when the action is triggered.
  onTapBACK(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.iphone1415ProTwoScreen,
    );
  }
}
