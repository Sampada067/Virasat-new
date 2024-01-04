import '../iphone_14_pro_twelve_page/widgets/freshtext1_item_widget.dart';
import '../iphone_14_pro_twelve_page/widgets/pashmanishawltext_item_widget.dart';
import 'bloc/iphone_14_pro_twelve_bloc.dart';
import 'models/freshtext1_item_model.dart';
import 'models/iphone_14_pro_twelve_model.dart';
import 'models/pashmanishawltext_item_model.dart';
import 'package:flutter/material.dart';
import 'package:virasat/core/app_export.dart';
import 'package:virasat/widgets/custom_search_view.dart';

class Iphone14ProTwelvePage extends StatelessWidget {
  const Iphone14ProTwelvePage({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<Iphone14ProTwelveBloc>(
        create: (context) => Iphone14ProTwelveBloc(Iphone14ProTwelveState(
            iphone14ProTwelveModelObj: Iphone14ProTwelveModel()))
          ..add(Iphone14ProTwelveInitialEvent()),
        child: Iphone14ProTwelvePage());
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            body: Container(
                width: double.maxFinite,
                decoration: AppDecoration.fillWhiteA,
                child: SingleChildScrollView(
                    child: Column(children: [
                  _buildNinetyThreeStack(context),
                  _buildNinetyFourStack(context),
                  SizedBox(height: 8.v),
                  _buildEightyNineStack(context),
                  SizedBox(height: 29.v),
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                          padding: EdgeInsets.only(left: 99.h),
                          child: Text("msg_welcome_to_the_portal".tr,
                              style: CustomTextStyles
                                  .titleMediumInriaSansPurple900))),
                  SizedBox(height: 37.v),
                  _buildFrameThirtyFourStack(context)
                ])))));
  }

  /// Section Widget
  Widget _buildNinetyThreeStack(BuildContext context) {
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
                                    Iphone14ProTwelveBloc,
                                    Iphone14ProTwelveState,
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
  Widget _buildNinetyFourStack(BuildContext context) {
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
  Widget _buildEightyNineStack(BuildContext context) {
    return SizedBox(
        height: 208.v,
        width: double.maxFinite,
        child: Stack(alignment: Alignment.topCenter, children: [
          Align(
              alignment: Alignment.bottomCenter,
              child: SizedBox(
                  height: 119.v,
                  width: double.maxFinite,
                  child: Stack(alignment: Alignment.bottomRight, children: [
                    CustomImageView(
                        imagePath: ImageConstant.imgRectangle4119x393,
                        height: 119.v,
                        width: 393.h,
                        alignment: Alignment.center),
                    Align(
                        alignment: Alignment.bottomRight,
                        child: Padding(
                            padding: EdgeInsets.fromLTRB(29.h, 21.v, 7.h, 14.v),
                            child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                      padding: EdgeInsets.only(
                                          top: 17.v, bottom: 32.v),
                                      child: Text("lbl_navi".tr,
                                          style:
                                              theme.textTheme.headlineMedium)),
                                  SizedBox(
                                      height: 84.v,
                                      width: 160.h,
                                      child: Stack(
                                          alignment: Alignment.bottomLeft,
                                          children: [
                                            CustomImageView(
                                                imagePath: ImageConstant
                                                    .imgWhereOdopMeet96x147,
                                                height: 84.v,
                                                width: 105.h,
                                                alignment:
                                                    Alignment.centerRight),
                                            CustomImageView(
                                                imagePath: ImageConstant
                                                    .imgWhereOdopMeet,
                                                height: 75.v,
                                                width: 64.h,
                                                alignment: Alignment.bottomLeft,
                                                margin: EdgeInsets.only(
                                                    bottom: 1.v))
                                          ]))
                                ])))
                  ]))),
          Align(
              alignment: Alignment.topCenter,
              child: Padding(
                  padding: EdgeInsets.only(left: 13.h),
                  child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                            height: 75.v,
                            child: BlocSelector<
                                    Iphone14ProTwelveBloc,
                                    Iphone14ProTwelveState,
                                    Iphone14ProTwelveModel?>(
                                selector: (state) =>
                                    state.iphone14ProTwelveModelObj,
                                builder: (context, iphone14ProTwelveModelObj) {
                                  return ListView.separated(
                                      scrollDirection: Axis.horizontal,
                                      separatorBuilder: (context, index) {
                                        return SizedBox(width: 5.h);
                                      },
                                      itemCount: iphone14ProTwelveModelObj
                                              ?.freshtext1ItemList.length ??
                                          0,
                                      itemBuilder: (context, index) {
                                        Freshtext1ItemModel model =
                                            iphone14ProTwelveModelObj
                                                        ?.freshtext1ItemList[
                                                    index] ??
                                                Freshtext1ItemModel();
                                        return Freshtext1ItemWidget(model);
                                      });
                                })),
                        CustomImageView(
                            imagePath: ImageConstant.imgUntitledDesign102x114,
                            height: 102.v,
                            width: 114.h,
                            margin: EdgeInsets.only(left: 101.h))
                      ])))
        ]));
  }

  /// Section Widget
  Widget _buildFrameThirtyFourStack(BuildContext context) {
    return SizedBox(
        height: 362.v,
        width: 359.h,
        child: Stack(alignment: Alignment.topLeft, children: [
          Align(
              alignment: Alignment.center,
              child: SizedBox(
                  height: 362.v,
                  width: 359.h,
                  child: Stack(alignment: Alignment.bottomRight, children: [
                    Align(
                        alignment: Alignment.bottomCenter,
                        child: Container(
                            height: 462.v,
                            width: 359.h,
                            decoration: BoxDecoration(
                                border: Border.all(
                                    color: appTheme.gray300, width: 1.h)))),
                    Align(
                        alignment: Alignment.bottomRight,
                        child:
                            Column(mainAxisSize: MainAxisSize.min, children: [
                          SizedBox(
                              height: 497.v,
                              width: 369.h,
                              child: Stack(
                                  alignment: Alignment.bottomRight,
                                  children: [
                                    Padding(
                                        padding: EdgeInsets.only(
                                            left: 25.h, bottom: 72.v),
                                        child: _buildFifteenColumn(context,
                                            price: "lbl_m_r_p_4_549".tr)),
                                    Padding(
                                        padding: EdgeInsets.only(bottom: 72.v),
                                        child: _buildFifteenColumn(context,
                                            price: "lbl_m_r_p_1_200".tr)),
                                    Align(
                                        alignment: Alignment.centerLeft,
                                        child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            children: [
                                              Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  children: [
                                                    CustomImageView(
                                                        imagePath: ImageConstant
                                                            .imgDownload1,
                                                        height: 122.v,
                                                        width: 132.h,
                                                        radius: BorderRadius
                                                            .circular(19.h),
                                                        margin: EdgeInsets.only(
                                                            top: 2.v),
                                                        onTap: () {
                                                          onTapImgDownloadOne(
                                                              context);
                                                        }),
                                                    CustomImageView(
                                                        imagePath: ImageConstant
                                                            .imgDownload3,
                                                        height: 124.v,
                                                        width: 130.h,
                                                        radius: BorderRadius
                                                            .circular(19.h),
                                                        margin: EdgeInsets.only(
                                                            left: 58.h),
                                                        onTap: () {
                                                          onTapImgDownloadThree(
                                                              context);
                                                        })
                                                  ]),
                                              SizedBox(height: 2.v),
                                              BlocSelector<
                                                      Iphone14ProTwelveBloc,
                                                      Iphone14ProTwelveState,
                                                      Iphone14ProTwelveModel?>(
                                                  selector: (state) => state
                                                      .iphone14ProTwelveModelObj,
                                                  builder: (context,
                                                      iphone14ProTwelveModelObj) {
                                                    return GridView.builder(
                                                        shrinkWrap: true,
                                                        gridDelegate:
                                                            SliverGridDelegateWithFixedCrossAxisCount(
                                                                mainAxisExtent: 34
                                                                    .v,
                                                                crossAxisCount:
                                                                    2,
                                                                mainAxisSpacing:
                                                                    94.h,
                                                                crossAxisSpacing:
                                                                    94.h),
                                                        physics:
                                                            NeverScrollableScrollPhysics(),
                                                        itemCount:
                                                            iphone14ProTwelveModelObj
                                                                    ?.pashmanishawltextItemList
                                                                    .length ??
                                                                0,
                                                        itemBuilder:
                                                            (context, index) {
                                                          PashmanishawltextItemModel
                                                              model =
                                                              iphone14ProTwelveModelObj
                                                                          ?.pashmanishawltextItemList[
                                                                      index] ??
                                                                  PashmanishawltextItemModel();
                                                          return PashmanishawltextItemWidget(
                                                              model);
                                                        });
                                                  })
                                            ]))
                                  ])),
                          SizedBox(height: 2.v),
                          Padding(
                              padding: EdgeInsets.only(left: 14.h, right: 17.h),
                              child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    SizedBox(
                                        width: 137.h,
                                        child: Text("msg_kashmiri_almonds".tr,
                                            maxLines: null,
                                            overflow: TextOverflow.ellipsis,
                                            style: CustomTextStyles
                                                .bodySmallInriaSans)),
                                    Container(
                                        width: 137.h,
                                        margin: EdgeInsets.only(left: 64.h),
                                        child: Text("msg_walnut_woodcraft".tr,
                                            maxLines: null,
                                            overflow: TextOverflow.ellipsis,
                                            style: CustomTextStyles
                                                .bodySmallInriaSans))
                                  ]))
                        ]))
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

  /// Common widget
  Widget _buildFifteenColumn(
    BuildContext context, {
    required String price,
  }) {
    return Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomImageView(
              imagePath: ImageConstant.imgDownload9, height: 12.v, width: 68.h),
          SizedBox(height: 2.v),
          Align(
              alignment: Alignment.centerRight,
              child: Text(price,
                  style: CustomTextStyles.bodySmallInriaSansGray900
                      .copyWith(color: appTheme.gray900)))
        ]);
  }

  /// Navigates to the iphone14ProFourScreen when the action is triggered.
  onTapImgDownloadOne(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.iphone14ProFourScreen,
    );
  }

  /// Navigates to the iphone14ProFiveScreen when the action is triggered.
  onTapImgDownloadThree(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.iphone14ProFiveScreen,
    );
  }
}
