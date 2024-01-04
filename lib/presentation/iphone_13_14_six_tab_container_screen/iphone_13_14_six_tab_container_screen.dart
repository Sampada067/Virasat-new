import 'bloc/iphone_13_14_six_tab_container_bloc.dart';
import 'models/iphone_13_14_six_tab_container_model.dart';
import 'package:flutter/material.dart';
import 'package:virasat/core/app_export.dart';
import 'package:virasat/presentation/iphone_13_14_five_page/iphone_13_14_five_page.dart';
import 'package:virasat/presentation/iphone_13_14_six_page/iphone_13_14_six_page.dart';
import 'package:virasat/widgets/app_bar/appbar_leading_image.dart';
import 'package:virasat/widgets/app_bar/custom_app_bar.dart';

class Iphone1314SixTabContainerScreen extends StatefulWidget {
  const Iphone1314SixTabContainerScreen({Key? key}) : super(key: key);

  @override
  Iphone1314SixTabContainerScreenState createState() =>
      Iphone1314SixTabContainerScreenState();

  static Widget builder(BuildContext context) {
    return BlocProvider<Iphone1314SixTabContainerBloc>(
        create: (context) => Iphone1314SixTabContainerBloc(
            Iphone1314SixTabContainerState(
                iphone1314SixTabContainerModelObj:
                    Iphone1314SixTabContainerModel()))
          ..add(Iphone1314SixTabContainerInitialEvent()),
        child: Iphone1314SixTabContainerScreen());
  }
}

// ignore_for_file: must_be_immutable
class Iphone1314SixTabContainerScreenState
    extends State<Iphone1314SixTabContainerScreen>
    with TickerProviderStateMixin {
  late TabController tabviewController;

  @override
  void initState() {
    super.initState();
    tabviewController = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<Iphone1314SixTabContainerBloc,
        Iphone1314SixTabContainerState>(builder: (context, state) {
      return SafeArea(
          child: Scaffold(
              appBar: _buildAppBar(context),
              body: SizedBox(
                  width: 390.h,
                  child: Column(children: [
                    SizedBox(height: 1.v),
                    CustomImageView(
                        imagePath: ImageConstant.imgSystemBarsSta61x390,
                        height: 61.v,
                        width: 390.h),
                    Column(children: [
                      SizedBox(height: 20.v),
                      _buildTabview(context),
                      SizedBox(
                          height: 703.v,
                          child: TabBarView(
                              controller: tabviewController,
                              children: [
                                Iphone1314FivePage(),
                                Iphone1314SixPage(),
                                Iphone1314SixPage()
                              ]))
                    ])
                  ]))));
    });
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        height: 18.v,
        leadingWidth: 390.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgArrowLeft,
            margin: EdgeInsets.only(left: 21.h, right: 344.h),
            onTap: () {
              onTapArrowLeft(context);
            }));
  }

  /// Section Widget
  Widget _buildTabview(BuildContext context) {
    return Container(
        height: 41.v,
        width: 373.h,
        child: TabBar(
            controller: tabviewController,
            isScrollable: true,
            labelColor: appTheme.indigoA70002,
            labelStyle: TextStyle(
                fontSize: 17.fSize,
                fontFamily: 'Brawler',
                fontWeight: FontWeight.w400),
            unselectedLabelColor: appTheme.indigoA70002,
            unselectedLabelStyle: TextStyle(
                fontSize: 17.fSize,
                fontFamily: 'Brawler',
                fontWeight: FontWeight.w400),
            indicator: BoxDecoration(
                color: appTheme.indigoA10001,
                borderRadius: BorderRadius.circular(19.h),
                border: Border.all(color: appTheme.indigoA70002, width: 1.h)),
            tabs: [
              Tab(child: Text("lbl_courses".tr)),
              Tab(child: Text("lbl_schemes".tr)),
              Tab(child: Text("lbl_forms".tr))
            ]));
  }

  /// Navigates to the previous screen.
  onTapArrowLeft(BuildContext context) {
    NavigatorService.goBack();
  }
}
