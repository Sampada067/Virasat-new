import 'bloc/iphone_14_pro_one_bloc.dart';
import 'models/iphone_14_pro_one_model.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:virasat/core/app_export.dart';
import 'package:virasat/widgets/custom_elevated_button.dart';

class Iphone14ProOneScreen extends StatelessWidget {
  Iphone14ProOneScreen({Key? key})
      : super(
          key: key,
        );

  PageController pageController = PageController();

  static Widget builder(BuildContext context) {
    return BlocProvider<Iphone14ProOneBloc>(
      create: (context) => Iphone14ProOneBloc(Iphone14ProOneState(
        iphone14ProOneModelObj: Iphone14ProOneModel(),
      ))
        ..add(Iphone14ProOneInitialEvent()),
      child: Iphone14ProOneScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<Iphone14ProOneBloc, Iphone14ProOneState>(
      builder: (context, state) {
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
                    width: 393.h,
                  ),
                  SizedBox(
                    height: 720.v,
                    child: PageView(
                      controller: pageController,
                      scrollDirection: Axis.horizontal,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Spacer(
                              flex: 1,
                            ),
                            CustomImageView(
                              imagePath: ImageConstant.imgCreateEcommerc,
                              height: 312.adaptSize,
                              width: 312.adaptSize,
                              margin: EdgeInsets.only(left: 28.h),
                            ),
                            Spacer(
                              flex: 2,
                            ),
                            Container(
                              width: 230.h,
                              margin: EdgeInsets.only(left: 69.h),
                              child: Text(
                                "msg_seamless_artisan_to_consumer".tr,
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.center,
                                style: CustomTextStyles.bodyLargeErrorContainer,
                              ),
                            ),
                            Spacer(
                              flex: 1,
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            CustomImageView(
                              imagePath: ImageConstant.img7c2bacf83a09e83,
                              height: 1.adaptSize,
                              width: 1.adaptSize,
                              alignment: Alignment.centerLeft,
                              margin: EdgeInsets.only(
                                left: 90.h,
                                top: 49.v,
                              ),
                            ),
                            CustomImageView(
                              imagePath: ImageConstant.imgDelightYourCu,
                              height: 331.v,
                              width: 345.h,
                              margin: EdgeInsets.only(top: 70.v),
                            ),
                            Spacer(),
                            SizedBox(
                              width: 264.h,
                              child: Text(
                                "msg_traceability_through".tr,
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.center,
                                style: CustomTextStyles.bodyLargeErrorContainer,
                              ),
                            ),
                            CustomElevatedButton(
                              height: 31.v,
                              width: 210.h,
                              text: "lbl_get_started".tr,
                              margin: EdgeInsets.only(top: 34.v),
                              buttonStyle: CustomButtonStyles.fillPrimary,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 76.v),
                  Align(
                    alignment: Alignment.center,
                    child: SmoothPageIndicator(
                      controller: pageController,
                      count: 2,
                      axisDirection: Axis.horizontal,
                      effect: ScrollingDotsEffect(
                        activeDotColor: Color(0X1212121D),
                        dotHeight: 13.v,
                      ),
                      onDotClicked: (value) {
                        pageController.jumpToPage(value);
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
