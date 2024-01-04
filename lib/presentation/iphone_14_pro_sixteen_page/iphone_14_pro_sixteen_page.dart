import '../iphone_14_pro_sixteen_page/widgets/craftapaloozacomponent_item_widget.dart';
import 'bloc/iphone_14_pro_sixteen_bloc.dart';
import 'models/craftapaloozacomponent_item_model.dart';
import 'models/iphone_14_pro_sixteen_model.dart';
import 'package:flutter/material.dart';
import 'package:virasat/core/app_export.dart';

// ignore_for_file: must_be_immutable
class Iphone14ProSixteenPage extends StatefulWidget {
  const Iphone14ProSixteenPage({Key? key})
      : super(
          key: key,
        );

  @override
  Iphone14ProSixteenPageState createState() => Iphone14ProSixteenPageState();
  static Widget builder(BuildContext context) {
    return BlocProvider<Iphone14ProSixteenBloc>(
      create: (context) => Iphone14ProSixteenBloc(Iphone14ProSixteenState(
        iphone14ProSixteenModelObj: Iphone14ProSixteenModel(),
      ))
        ..add(Iphone14ProSixteenInitialEvent()),
      child: Iphone14ProSixteenPage(),
    );
  }
}

class Iphone14ProSixteenPageState extends State<Iphone14ProSixteenPage>
    with AutomaticKeepAliveClientMixin<Iphone14ProSixteenPage> {
  @override
  bool get wantKeepAlive => true;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.maxFinite,
          decoration: AppDecoration.fillWhiteA,
          child: Column(
            children: [
              SizedBox(height: 38.v),
              _buildCraftapaloozaComponent(context),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildCraftapaloozaComponent(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 25.h),
      child: BlocSelector<Iphone14ProSixteenBloc, Iphone14ProSixteenState,
          Iphone14ProSixteenModel?>(
        selector: (state) => state.iphone14ProSixteenModelObj,
        builder: (context, iphone14ProSixteenModelObj) {
          return ListView.separated(
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            separatorBuilder: (
              context,
              index,
            ) {
              return SizedBox(
                height: 25.v,
              );
            },
            itemCount: iphone14ProSixteenModelObj
                    ?.craftapaloozacomponentItemList.length ??
                0,
            itemBuilder: (context, index) {
              CraftapaloozacomponentItemModel model = iphone14ProSixteenModelObj
                      ?.craftapaloozacomponentItemList[index] ??
                  CraftapaloozacomponentItemModel();
              return CraftapaloozacomponentItemWidget(
                model,
              );
            },
          );
        },
      ),
    );
  }
}
