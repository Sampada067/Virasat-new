import '../iphone_14_pro_three_screen/widgets/freshtext_item_widget.dart';
import '../iphone_14_pro_three_screen/widgets/view_item_widget.dart';
import 'bloc/iphone_14_pro_three_bloc.dart';
import 'models/freshtext_item_model.dart';
import 'models/iphone_14_pro_three_model.dart';
import 'models/view_item_model.dart';
import 'package:flutter/material.dart';
import 'package:virasat/core/app_export.dart';
import 'package:virasat/presentation/iphone_14_pro_eleven_page/iphone_14_pro_eleven_page.dart';
import 'package:virasat/presentation/iphone_14_pro_twelve_page/iphone_14_pro_twelve_page.dart';
import 'package:virasat/widgets/custom_bottom_bar.dart';
import 'package:virasat/widgets/custom_search_view.dart';

// ignore_for_file: must_be_immutable
class Iphone14ProThreeScreen extends StatelessWidget {
  Iphone14ProThreeScreen({Key? key}) : super(key: key);

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  static Widget builder(BuildContext context) {
    return BlocProvider<Iphone14ProThreeBloc>(
        create: (context) => Iphone14ProThreeBloc(Iphone14ProThreeState(
            iphone14ProThreeModelObj: Iphone14ProThreeModel()))
          ..add(Iphone14ProThreeInitialEvent()),
        child: Iphone14ProThreeScreen());
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            body: SizedBox(
                width: SizeUtils.width,
                child: SingleChildScrollView(
                    child: Column(children: [
                  _buildImageStack(context),
                  _buildDeliverToKaniskStack(context),
                  SizedBox(height: 8.v),
                  _buildWhereODOPMeetStack(context),
                  SizedBox(height: 30.v),
                  Text("msg_welcome_to_the_portal".tr,
                      style: CustomTextStyles.titleLargePurple900),
                  SizedBox(height: 31.v),
                  _buildFrameThirtyFourStack(context)
                ]))),
            bottomNavigationBar: _buildBottomBar(context)));
  }

  /// Section Widget
  Widget _buildImageStack(BuildContext context) {
    return SizedBox(
        height: 94.v,
        width: double.maxFinite,
        child: Stack(alignment: Alignment.bottomCenter, children: [
          CustomImageView(
              imagePath: ImageConstant.imgRectangle2,
              height: 94.v,
              width: 393.h,
              alignment: Alignment.center),
          Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                  padding: EdgeInsets.only(bottom: 12.v),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Expanded(
                            child: BlocSelector<
                                    Iphone14ProThreeBloc,
                                    Iphone14ProThreeState,
                                    TextEditingController?>(
                                selector: (state) => state.searchController,
                                builder: (context, searchController) {
                                  return CustomSearchView(
                                      controller: searchController,
                                      hintText: "lbl_search_virasat".tr);
                                })),
                        CustomImageView(
                            imagePath: ImageConstant.imgPhMicrophone,
                            height: 21.adaptSize,
                            width: 21.adaptSize,
                            margin: EdgeInsets.only(
                                left: 7.h, top: 8.v, bottom: 6.v))
                      ])))
        ]));
  }

  /// Section Widget
  Widget _buildDeliverToKaniskStack(BuildContext context) {
    return SizedBox(
        height: 34.v,
        width: double.maxFinite,
        child: Stack(alignment: Alignment.topLeft, children: [
          CustomImageView(
              imagePath: ImageConstant.imgRectangle3,
              height: 34.v,
              width: 393.h,
              alignment: Alignment.center),
          Align(
              alignment: Alignment.topLeft,
              child: Padding(
                  padding: EdgeInsets.only(left: 13.h, top: 7.v),
                  child: Row(children: [
                    CustomImageView(
                        imagePath: ImageConstant.imgSystemUiconsLocation,
                        height: 18.v,
                        width: 16.h),
                    Padding(
                        padding:
                            EdgeInsets.only(left: 3.h, top: 4.v, bottom: 2.v),
                        child: Text("msg_deliver_to_kanisk".tr,
                            style: theme.textTheme.bodySmall))
                  ])))
        ]));
  }

  /// Section Widget
  Widget _buildWhereODOPMeetStack(BuildContext context) {
    return SizedBox(
        height: 208.v,
        width: double.maxFinite,
        child: Stack(alignment: Alignment.bottomRight, children: [
          Align(
              alignment: Alignment.bottomCenter,
              child: SizedBox(
                  height: 119.v,
                  width: 383.h,
                  child: Stack(alignment: Alignment.topLeft, children: [
                    CustomImageView(
                        imagePath: ImageConstant.imgRectangle4,
                        height: 119.v,
                        width: 383.h,
                        alignment: Alignment.center),
                    CustomImageView(
                        imagePath: ImageConstant.imgWhereOdopMeet,
                        height: 94.adaptSize,
                        width: 94.adaptSize,
                        alignment: Alignment.topLeft,
                        margin: EdgeInsets.only(left: 119.h, top: 9.v))
                  ]))),
          CustomImageView(
              imagePath: ImageConstant.imgWhereOdopMeet96x147,
              height: 96.v,
              width: 147.h,
              alignment: Alignment.bottomRight,
              margin: EdgeInsets.only(right: 7.h, bottom: 14.v)),
          Align(
              alignment: Alignment.topCenter,
              child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                        height: 75.v,
                        child: BlocSelector<Iphone14ProThreeBloc,
                                Iphone14ProThreeState, Iphone14ProThreeModel?>(
                            selector: (state) => state.iphone14ProThreeModelObj,
                            builder: (context, iphone14ProThreeModelObj) {
                              return ListView.separated(
                                  padding: EdgeInsets.only(left: 13.h),
                                  scrollDirection: Axis.horizontal,
                                  separatorBuilder: (context, index) {
                                    return SizedBox(width: 5.h);
                                  },
                                  itemCount: iphone14ProThreeModelObj
                                          ?.freshtextItemList.length ??
                                      0,
                                  itemBuilder: (context, index) {
                                    FreshtextItemModel model =
                                        iphone14ProThreeModelObj
                                                ?.freshtextItemList[index] ??
                                            FreshtextItemModel();
                                    return FreshtextItemWidget(model);
                                  });
                            })),
                    CustomImageView(
                        imagePath: ImageConstant.imgUntitledDesign102x108,
                        height: 102.v,
                        width: 108.h)
                  ]))
        ]));
  }

  /// Section Widget
  Widget _buildFrameThirtyFourStack(BuildContext context) {
    return SizedBox(
        height: 362.v,
        width: 359.h,
        child: Stack(alignment: Alignment.topLeft, children: [
          Align(
              alignment: Alignment.bottomCenter,
              child: SizedBox(
                  height: 528.v,
                  width: 371.h,
                  child: Stack(alignment: Alignment.topLeft, children: [
                    CustomImageView(
                        imagePath: ImageConstant.imgDownload3,
                        height: 124.v,
                        width: 130.h,
                        radius: BorderRadius.circular(19.h),
                        alignment: Alignment.topRight,
                        margin: EdgeInsets.only(right: 32.h),
                        onTap: () {
                          onTapImgDownloadThree(context);
                        }),
                    CustomImageView(
                        imagePath: ImageConstant.imgDownload1,
                        height: 122.v,
                        width: 132.h,
                        radius: BorderRadius.circular(19.h),
                        alignment: Alignment.topLeft,
                        margin: EdgeInsets.only(left: 19.h, top: 2.v),
                        onTap: () {
                          onTapImgDownloadOne(context);
                        }),
                    Align(
                        alignment: Alignment.bottomCenter,
                        child: Padding(
                            padding: EdgeInsets.only(top: 74.v),
                            child: BlocSelector<
                                    Iphone14ProThreeBloc,
                                    Iphone14ProThreeState,
                                    Iphone14ProThreeModel?>(
                                selector: (state) =>
                                    state.iphone14ProThreeModelObj,
                                builder: (context, iphone14ProThreeModelObj) {
                                  return GridView.builder(
                                      shrinkWrap: true,
                                      gridDelegate:
                                          SliverGridDelegateWithFixedCrossAxisCount(
                                              mainAxisExtent: 333.v,
                                              crossAxisCount: 1,
                                              mainAxisSpacing: 1.h,
                                              crossAxisSpacing: 1.h),
                                      physics: NeverScrollableScrollPhysics(),
                                      itemCount: iphone14ProThreeModelObj
                                              ?.viewItemList.length ??
                                          0,
                                      itemBuilder: (context, index) {
                                        ViewItemModel model =
                                            iphone14ProThreeModelObj
                                                    ?.viewItemList[index] ??
                                                ViewItemModel();
                                        return ViewItemWidget(model);
                                      });
                                })))
                  ]))),
          Align(
              alignment: Alignment.topLeft,
              child: Padding(
                  padding:
                      EdgeInsets.only(left: 8.h, right: 24.h, bottom: 339.v),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("lbl_products".tr,
                            style: CustomTextStyles
                                .bodyLargeInriaSansErrorContainer),
                        Padding(
                            padding: EdgeInsets.symmetric(vertical: 3.v),
                            child: Text("lbl_see_more2".tr,
                                style: CustomTextStyles
                                    .bodySmallInriaSansIndigo500))
                      ])))
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

  /// Navigates to the iphone14ProFiveScreen when the action is triggered.
  onTapImgDownloadThree(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.iphone14ProFiveScreen,
    );
  }

  /// Navigates to the iphone14ProFourScreen when the action is triggered.
  onTapImgDownloadOne(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.iphone14ProFourScreen,
    );
  }
}
