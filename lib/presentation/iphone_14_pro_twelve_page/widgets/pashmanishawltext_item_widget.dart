import '../models/pashmanishawltext_item_model.dart';
import 'package:flutter/material.dart';
import 'package:virasat/core/app_export.dart';

// ignore: must_be_immutable
class PashmanishawltextItemWidget extends StatelessWidget {
  PashmanishawltextItemWidget(
    this.pashmanishawltextItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  PashmanishawltextItemModel pashmanishawltextItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          pashmanishawltextItemModelObj.pashmaniShawlText!,
          style: CustomTextStyles.bodySmallInriaSans,
        ),
        SizedBox(height: 1.v),
        Text(
          pashmanishawltextItemModelObj.srinagarText!,
          style: theme.textTheme.bodyMedium,
        ),
      ],
    );
  }
}
