import '../iphone_13_14_five_page/widgets/viewhierarchy_item_widget.dart';
import 'bloc/iphone_13_14_five_bloc.dart';
import 'models/iphone_13_14_five_model.dart';
import 'models/viewhierarchy_item_model.dart';
import 'package:flutter/material.dart';
import 'package:virasat/core/app_export.dart';

// ignore_for_file: must_be_immutable
class Iphone1314FivePage extends StatefulWidget {
  const Iphone1314FivePage({Key? key})
      : super(
          key: key,
        );

  @override
  Iphone1314FivePageState createState() => Iphone1314FivePageState();
  static Widget builder(BuildContext context) {
    return BlocProvider<Iphone1314FiveBloc>(
      create: (context) => Iphone1314FiveBloc(Iphone1314FiveState(
        iphone1314FiveModelObj: Iphone1314FiveModel(),
      ))
        ..add(Iphone1314FiveInitialEvent()),
      child: Iphone1314FivePage(),
    );
  }
}

class Iphone1314FivePageState extends State<Iphone1314FivePage>
    with AutomaticKeepAliveClientMixin<Iphone1314FivePage> {
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
              SizedBox(height: 22.v),
              _buildViewHierarchy(context),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildViewHierarchy(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 23.h,
        right: 29.h,
      ),
      child: BlocSelector<Iphone1314FiveBloc, Iphone1314FiveState,
          Iphone1314FiveModel?>(
        selector: (state) => state.iphone1314FiveModelObj,
        builder: (context, iphone1314FiveModelObj) {
          return ListView.separated(
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            separatorBuilder: (
              context,
              index,
            ) {
              return SizedBox(
                height: 18.v,
              );
            },
            itemCount:
                iphone1314FiveModelObj?.viewhierarchyItemList.length ?? 0,
            itemBuilder: (context, index) {
              ViewhierarchyItemModel model =
                  iphone1314FiveModelObj?.viewhierarchyItemList[index] ??
                      ViewhierarchyItemModel();
              return ViewhierarchyItemWidget(
                model,
              );
            },
          );
        },
      ),
    );
  }
}
