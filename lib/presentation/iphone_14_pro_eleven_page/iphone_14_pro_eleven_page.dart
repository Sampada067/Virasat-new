import '../iphone_14_pro_eleven_page/widgets/userprofile_item_widget.dart';
import 'bloc/iphone_14_pro_eleven_bloc.dart';
import 'models/iphone_14_pro_eleven_model.dart';
import 'models/userprofile_item_model.dart';
import 'package:flutter/material.dart';
import 'package:virasat/core/app_export.dart';

class Iphone14ProElevenPage extends StatelessWidget {
  const Iphone14ProElevenPage({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<Iphone14ProElevenBloc>(
        create: (context) => Iphone14ProElevenBloc(Iphone14ProElevenState(
            iphone14ProElevenModelObj: Iphone14ProElevenModel()))
          ..add(Iphone14ProElevenInitialEvent()),
        child: Iphone14ProElevenPage());
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: Container(
                width: double.maxFinite,
                decoration: AppDecoration.fillWhiteA,
                child: Column(children: [
                  _buildArrowLeftStack(context),
                  SizedBox(height: 89.v),
                  _buildGeneralColumn(context),
                  SizedBox(height: 88.v),
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Container(
                          height: 5.v,
                          width: 45.h,
                          margin: EdgeInsets.only(left: 95.h),
                          decoration: BoxDecoration(
                              color: appTheme.indigoA400,
                              borderRadius: BorderRadius.circular(2.h))))
                ]))));
  }

  /// Section Widget
  Widget _buildArrowLeftStack(BuildContext context) {
    return SizedBox(
        height: 294.v,
        width: double.maxFinite,
        child: Stack(alignment: Alignment.topCenter, children: [
          Align(
              alignment: Alignment.center,
              child: SizedBox(
                  height: 294.v,
                  width: double.maxFinite,
                  child: Stack(alignment: Alignment.bottomLeft, children: [
                    CustomImageView(
                        imagePath: ImageConstant.imgRectangle7294x393,
                        height: 294.v,
                        width: 393.h,
                        radius: BorderRadius.circular(49.h),
                        alignment: Alignment.center),
                    Align(
                        alignment: Alignment.bottomLeft,
                        child: Padding(
                            padding: EdgeInsets.only(left: 16.h, bottom: 48.v),
                            child: Column(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Align(
                                      alignment: Alignment.centerLeft,
                                      child: Row(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Container(
                                                width: 75.h,
                                                margin: EdgeInsets.only(
                                                    bottom: 93.v),
                                                child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      CustomImageView(
                                                          imagePath:
                                                              ImageConstant
                                                                  .imgArrowLeft,
                                                          height: 18.v,
                                                          width: 25.h,
                                                          onTap: () {
                                                            onTapImgArrowLeft(
                                                                context);
                                                          }),
                                                      CustomImageView(
                                                          imagePath: ImageConstant
                                                              .img7c2bacf83a09e83,
                                                          height: 1.adaptSize,
                                                          width: 1.adaptSize,
                                                          margin:
                                                              EdgeInsets.only(
                                                                  top: 3.v,
                                                                  bottom: 14.v))
                                                    ])),
                                            CustomImageView(
                                                imagePath: ImageConstant
                                                    .imgRectangle16,
                                                height: 102.v,
                                                width: 100.h,
                                                radius:
                                                    BorderRadius.circular(19.h),
                                                margin: EdgeInsets.only(
                                                    left: 58.h, top: 9.v))
                                          ])),
                                  SizedBox(height: 6.v),
                                  Padding(
                                      padding: EdgeInsets.only(right: 21.h),
                                      child: Text("lbl_mahmud_naik".tr,
                                          style: CustomTextStyles
                                              .titleMediumWhiteA70002)),
                                  SizedBox(height: 6.v),
                                  Text("msg_mahmudnaik23_gmail_com".tr,
                                      style: CustomTextStyles
                                          .labelMediumBluegray100)
                                ])))
                  ]))),
          CustomImageView(
              imagePath: ImageConstant.imgSystemBarsSta61x393,
              height: 61.v,
              width: 393.h,
              alignment: Alignment.topCenter)
        ]));
  }

  /// Section Widget
  Widget _buildGeneralColumn(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 31.h),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text("lbl_general".tr, style: CustomTextStyles.bodyLargeGray700),
          SizedBox(height: 32.v),
          Padding(
              padding: EdgeInsets.only(right: 20.h),
              child: BlocSelector<Iphone14ProElevenBloc, Iphone14ProElevenState,
                      Iphone14ProElevenModel?>(
                  selector: (state) => state.iphone14ProElevenModelObj,
                  builder: (context, iphone14ProElevenModelObj) {
                    return ListView.separated(
                        physics: NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        separatorBuilder: (context, index) {
                          return SizedBox(height: 22.v);
                        },
                        itemCount: iphone14ProElevenModelObj
                                ?.userprofileItemList.length ??
                            0,
                        itemBuilder: (context, index) {
                          UserprofileItemModel model = iphone14ProElevenModelObj
                                  ?.userprofileItemList[index] ??
                              UserprofileItemModel();
                          return UserprofileItemWidget(model);
                        });
                  }))
        ]));
  }

  /// Navigates to the previous screen.
  onTapImgArrowLeft(BuildContext context) {
    NavigatorService.goBack();
  }
}
