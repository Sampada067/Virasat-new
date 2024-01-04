import 'package:flutter/material.dart';
import 'package:virasat/core/app_export.dart';
import 'package:virasat/widgets/custom_icon_button.dart';

// ignore: must_be_immutable
class AppbarTrailingIconbutton extends StatelessWidget {
  AppbarTrailingIconbutton({
    Key? key,
    this.imagePath,
    this.margin,
    this.onTap,
  }) : super(
          key: key,
        );

  String? imagePath;

  EdgeInsetsGeometry? margin;

  Function? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTap!.call();
      },
      child: Padding(
        padding: margin ?? EdgeInsets.zero,
        child: CustomIconButton(
          height: 29.v,
          width: 30.h,
          child: CustomImageView(
            imagePath: ImageConstant.imgCart,
          ),
        ),
      ),
    );
  }
}
