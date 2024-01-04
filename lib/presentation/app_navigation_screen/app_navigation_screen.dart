import 'bloc/app_navigation_bloc.dart';
import 'models/app_navigation_model.dart';
import 'package:flutter/material.dart';
import 'package:virasat/core/app_export.dart';

class AppNavigationScreen extends StatelessWidget {
  const AppNavigationScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<AppNavigationBloc>(
      create: (context) => AppNavigationBloc(AppNavigationState(
        appNavigationModelObj: AppNavigationModel(),
      ))
        ..add(AppNavigationInitialEvent()),
      child: AppNavigationScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AppNavigationBloc, AppNavigationState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            backgroundColor: Color(0XFFFFFFFF),
            body: SizedBox(
              width: 375.h,
              child: Column(
                children: [
                  _buildAppNavigation(context),
                  Expanded(
                    child: SingleChildScrollView(
                      child: Container(
                        decoration: BoxDecoration(
                          color: Color(0XFFFFFFFF),
                        ),
                        child: Column(
                          children: [
                            _buildScreenTitle(
                              context,
                              screenTitle: "iPhone 14 Pro - One".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.iphone14ProOneScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle:
                                  "iPhone 14 Pro - Sixteen - Tab Container".tr,
                              onTapScreenTitle: () => onTapScreenTitle(AppRoutes
                                  .iphone14ProSixteenTabContainerScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "iPhone 14 Pro - Fourteen".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.iphone14ProFourteenScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "iPhone 14 Pro - Fifteen".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.iphone14ProFifteenScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "iPhone 14 Pro - Nine".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.iphone14ProNineScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "iPhone 14 Pro - Three".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.iphone14ProThreeScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "iPhone 14 Pro - Four".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.iphone14ProFourScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "iPhone 14 & 15 Pro - Two".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.iphone1415ProTwoScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "iPhone 13 & 14 - One".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.iphone1314OneScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "iPhone 13 & 14 - Four".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.iphone1314FourScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle:
                                  "iPhone 14 Pro - Twelve - Container".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.iphone14ProTwelveContainerScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "iPhone 14 & 15 Pro - One".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.iphone1415ProOneScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "iPhone 14 Pro - Thirteen".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.iphone14ProThirteenScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "iPhone 14 Pro - Five".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.iphone14ProFiveScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "iPhone 13 & 14 - Two".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.iphone1314TwoScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "iPhone 13 & 14 - Three".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.iphone1314ThreeScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "iPhone 14 Pro - Eight".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.iphone14ProEightScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "iPhone 14 Pro - Ten".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.iphone14ProTenScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle:
                                  "iPhone 13 & 14 - Six - Tab Container".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.iphone1314SixTabContainerScreen),
                            ),
                          ],
                        ),
                      ),
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

  /// Section Widget
  Widget _buildAppNavigation(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color(0XFFFFFFFF),
      ),
      child: Column(
        children: [
          SizedBox(height: 10.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.h),
              child: Text(
                "App Navigation".tr,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0XFF000000),
                  fontSize: 20.fSize,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          SizedBox(height: 10.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 20.h),
              child: Text(
                "Check your app's UI from the below demo screens of your app."
                    .tr,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0XFF888888),
                  fontSize: 16.fSize,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          SizedBox(height: 5.v),
          Divider(
            height: 1.v,
            thickness: 1.v,
            color: Color(0XFF000000),
          ),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildScreenTitle(
    BuildContext context, {
    required String screenTitle,
    Function? onTapScreenTitle,
  }) {
    return GestureDetector(
      onTap: () {
        onTapScreenTitle!.call();
      },
      child: Container(
        decoration: BoxDecoration(
          color: Color(0XFFFFFFFF),
        ),
        child: Column(
          children: [
            SizedBox(height: 10.v),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.h),
                child: Text(
                  screenTitle,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0XFF000000),
                    fontSize: 20.fSize,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
            SizedBox(height: 10.v),
            SizedBox(height: 5.v),
            Divider(
              height: 1.v,
              thickness: 1.v,
              color: Color(0XFF888888),
            ),
          ],
        ),
      ),
    );
  }

  /// Common click event
  void onTapScreenTitle(String routeName) {
    NavigatorService.pushNamed(routeName);
  }
}
