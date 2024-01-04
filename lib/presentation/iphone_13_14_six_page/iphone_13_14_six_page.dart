import '../iphone_13_14_six_page/widgets/clickabletextlist_item_widget.dart';
import 'bloc/iphone_13_14_six_bloc.dart';
import 'models/clickabletextlist_item_model.dart';
import 'models/iphone_13_14_six_model.dart';
import 'package:flutter/material.dart';
import 'package:virasat/core/app_export.dart';

// ignore_for_file: must_be_immutable
class Iphone1314SixPage extends StatefulWidget {
  const Iphone1314SixPage({Key? key})
      : super(
          key: key,
        );

  @override
  Iphone1314SixPageState createState() => Iphone1314SixPageState();
  static Widget builder(BuildContext context) {
    return BlocProvider<Iphone1314SixBloc>(
      create: (context) => Iphone1314SixBloc(Iphone1314SixState(
        iphone1314SixModelObj: Iphone1314SixModel(),
      ))
        ..add(Iphone1314SixInitialEvent()),
      child: Iphone1314SixPage(),
    );
  }
}

class Iphone1314SixPageState extends State<Iphone1314SixPage>
    with AutomaticKeepAliveClientMixin<Iphone1314SixPage> {
  @override
  bool get wantKeepAlive => true;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: 390.h,
          decoration: AppDecoration.fillWhiteA,
          child: Column(
            children: [
              SizedBox(height: 30.v),
              Padding(
                padding: EdgeInsets.only(
                  left: 21.h,
                  right: 31.h,
                ),
                child: Column(
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgImages1,
                      height: 132.v,
                      width: 338.h,
                      radius: BorderRadius.circular(
                        23.h,
                      ),
                    ),
                    SizedBox(height: 6.v),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding: EdgeInsets.only(left: 13.h),
                        child: Text(
                          "lbl_click_on_link".tr,
                          style: CustomTextStyles.bodyMediumBrawlerGray60001,
                        ),
                      ),
                    ),
                    SizedBox(height: 25.v),
                    _buildClickableTextList(context),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildClickableTextList(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 6.h),
      child: BlocSelector<Iphone1314SixBloc, Iphone1314SixState,
          Iphone1314SixModel?>(
        selector: (state) => state.iphone1314SixModelObj,
        builder: (context, iphone1314SixModelObj) {
          return ListView.separated(
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            separatorBuilder: (
              context,
              index,
            ) {
              return SizedBox(
                height: 26.v,
              );
            },
            itemCount:
                iphone1314SixModelObj?.clickabletextlistItemList.length ?? 0,
            itemBuilder: (context, index) {
              ClickabletextlistItemModel model =
                  iphone1314SixModelObj?.clickabletextlistItemList[index] ??
                      ClickabletextlistItemModel();
              return ClickabletextlistItemWidget(
                model,
              );
            },
          );
        },
      ),
    );
  }
}
