import '../models/view_item_model.dart';
import 'package:flutter/material.dart';
import 'package:virasat/core/app_export.dart';

// ignore: must_be_immutable
class ViewItemWidget extends StatelessWidget {
  ViewItemWidget(
    this.viewItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  ViewItemModel viewItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        height: 332.v,
        width: 359.h,
        decoration: BoxDecoration(
          border: Border.all(
            color: appTheme.gray300,
            width: 1.h,
          ),
        ),
      ),
    );
  }
}
