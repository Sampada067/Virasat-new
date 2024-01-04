import 'package:flutter/material.dart';
import 'package:virasat/core/app_export.dart';

class CustomBottomBar extends StatefulWidget {
  CustomBottomBar({this.onChanged});

  Function(BottomBarEnum)? onChanged;

  @override
  CustomBottomBarState createState() => CustomBottomBarState();
}

class CustomBottomBarState extends State<CustomBottomBar> {
  int selectedIndex = 0;

  List<BottomMenuModel> bottomMenuList = [
    BottomMenuModel(
      icon: ImageConstant.imgNavHome,
      activeIcon: ImageConstant.imgNavHome,
      title: "lbl_home".tr,
      type: BottomBarEnum.Home,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgPlus,
      activeIcon: ImageConstant.imgPlus,
      title: "lbl_add_product".tr,
      type: BottomBarEnum.Addproduct,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgNavMenu,
      activeIcon: ImageConstant.imgNavMenu,
      title: "lbl_menu".tr,
      type: BottomBarEnum.Menu,
    )
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60.v,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(
          7.h,
        ),
        border: Border.all(
          color: appTheme.gray50001,
          width: 1.h,
        ),
      ),
      child: BottomNavigationBar(
        backgroundColor: Colors.transparent,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        selectedFontSize: 0,
        elevation: 0,
        currentIndex: selectedIndex,
        type: BottomNavigationBarType.fixed,
        items: List.generate(bottomMenuList.length, (index) {
          return BottomNavigationBarItem(
            icon: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: 27.v,
                  width: 31.h,
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      Align(
                        alignment: Alignment.topCenter,
                        child: Container(
                          margin: EdgeInsets.fromLTRB(7.h, 4.v, 6.h, 9.v),
                          decoration: AppDecoration.fillWhiteA,
                          child: CustomImageView(
                            imagePath: ImageConstant.imgPlus,
                            height: 10.v,
                            width: 12.h,
                            margin: EdgeInsets.fromLTRB(2.h, 1.v, 3.h, 2.v),
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.center,
                        child: Container(
                          decoration: AppDecoration.fillIndigoA.copyWith(
                            borderRadius: BorderRadiusStyle.roundedBorder13,
                          ),
                          child: Container(
                            margin: EdgeInsets.fromLTRB(6.h, 6.v, 7.h, 7.v),
                            decoration: AppDecoration.fillWhiteA,
                            child: CustomImageView(
                              imagePath: bottomMenuList[index].icon,
                              height: 10.v,
                              width: 12.h,
                              color: theme.colorScheme.errorContainer
                                  .withOpacity(1),
                              margin: EdgeInsets.fromLTRB(2.h, 1.v, 3.h, 2.v),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 1.v),
                  child: Text(
                    bottomMenuList[index].title ?? "",
                    style: theme.textTheme.bodySmall!.copyWith(
                      color: theme.colorScheme.errorContainer.withOpacity(1),
                    ),
                  ),
                ),
              ],
            ),
            activeIcon: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  height: 5.v,
                  width: 45.h,
                  decoration: BoxDecoration(
                    color: appTheme.indigoA400,
                    borderRadius: BorderRadius.circular(
                      2.h,
                    ),
                  ),
                ),
                CustomImageView(
                  imagePath: bottomMenuList[index].activeIcon,
                  height: 15.v,
                  width: 16.h,
                  color: appTheme.indigoA70002,
                  margin: EdgeInsets.only(top: 10.v),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 5.v),
                  child: Text(
                    bottomMenuList[index].title ?? "",
                    style: CustomTextStyles.bodySmallIndigoA70005.copyWith(
                      color: appTheme.indigoA70005,
                    ),
                  ),
                ),
              ],
            ),
            label: '',
          );
        }),
        onTap: (index) {
          selectedIndex = index;
          widget.onChanged?.call(bottomMenuList[index].type);
          setState(() {});
        },
      ),
    );
  }
}

enum BottomBarEnum {
  Home,
  Addproduct,
  Menu,
}

class BottomMenuModel {
  BottomMenuModel({
    required this.icon,
    required this.activeIcon,
    this.title,
    required this.type,
  });

  String icon;

  String activeIcon;

  String? title;

  BottomBarEnum type;
}

class DefaultWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.all(10),
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Please replace the respective Widget here',
              style: TextStyle(
                fontSize: 18,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
