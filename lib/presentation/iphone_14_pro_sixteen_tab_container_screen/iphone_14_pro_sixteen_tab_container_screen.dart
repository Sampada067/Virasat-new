import 'bloc/iphone_14_pro_sixteen_tab_container_bloc.dart';
import 'models/iphone_14_pro_sixteen_tab_container_model.dart';
import 'package:flutter/material.dart';
import 'package:virasat/core/app_export.dart';
import 'package:virasat/presentation/iphone_14_pro_eleven_page/iphone_14_pro_eleven_page.dart';
import 'package:virasat/presentation/iphone_14_pro_sixteen_page/iphone_14_pro_sixteen_page.dart';
import 'package:virasat/presentation/iphone_14_pro_twelve_page/iphone_14_pro_twelve_page.dart';
import 'package:virasat/widgets/app_bar/appbar_leading_image.dart';
import 'package:virasat/widgets/app_bar/custom_app_bar.dart';
import 'package:virasat/widgets/custom_bottom_bar.dart';

class Iphone14ProSixteenTabContainerScreen extends StatefulWidget {
  const Iphone14ProSixteenTabContainerScreen({Key? key}) : super(key: key);

  @override
  Iphone14ProSixteenTabContainerScreenState createState() =>
      Iphone14ProSixteenTabContainerScreenState();

  static Widget builder(BuildContext context) {
    return BlocProvider<Iphone14ProSixteenTabContainerBloc>(
        create: (context) => Iphone14ProSixteenTabContainerBloc(
            Iphone14ProSixteenTabContainerState(
                iphone14ProSixteenTabContainerModelObj:
                    Iphone14ProSixteenTabContainerModel()))
          ..add(Iphone14ProSixteenTabContainerInitialEvent()),
        child: Iphone14ProSixteenTabContainerScreen());
  }
}

// ignore_for_file: must_be_immutable
class Iphone14ProSixteenTabContainerScreenState
    extends State<Iphone14ProSixteenTabContainerScreen>
    with TickerProviderStateMixin {
  late TabController tabviewController;

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  void initState() {
    super.initState();
    tabviewController = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<Iphone14ProSixteenTabContainerBloc,
        Iphone14ProSixteenTabContainerState>(builder: (context, state) {
      return SafeArea(
          child: Scaffold(
              appBar: _buildAppBar(context),
              body: SizedBox(
                  width: double.maxFinite,
                  child: Column(children: [
                    CustomImageView(
                        imagePath: ImageConstant.imgSystemBarsSta,
                        height: 61.v,
                        width: 393.h),
                    SizedBox(height: 38.v),
                    _buildTabview(context),
                    SizedBox(
                        height: 652.v,
                        child: TabBarView(
                            controller: tabviewController,
                            children: [
                              Iphone14ProSixteenPage(),
                              Iphone14ProSixteenPage(),
                              Iphone14ProSixteenPage()
                            ]))
                  ])),
              bottomNavigationBar: _buildBottomBar(context)));
    });
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        height: 79.v,
        leadingWidth: double.maxFinite,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgArrowLeft,
            margin: EdgeInsets.only(left: 21.h, right: 347.h),
            onTap: () {
              onTapArrowLeft(context);
            }));
  }

  /// Section Widget
  Widget _buildTabview(BuildContext context) {
    return Container(
        height: 41.v,
        width: 376.h,
        child: TabBar(
            controller: tabviewController,
            isScrollable: true,
            labelColor: appTheme.indigoA70002,
            unselectedLabelColor: appTheme.indigoA70002,
            tabs: [
              Tab(child: Text("lbl_workshops".tr)),
              Tab(child: Text("lbl_events".tr)),
              Tab(child: Text("msg_exhibition_and_fair".tr))
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

  /// Navigates to the previous screen.
  onTapArrowLeft(BuildContext context) {
    NavigatorService.goBack();
  }
}
