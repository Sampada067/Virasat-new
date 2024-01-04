import 'package:flutter/material.dart';
import 'package:virasat/presentation/iphone_14_pro_one_screen/iphone_14_pro_one_screen.dart';
import 'package:virasat/presentation/iphone_14_pro_sixteen_tab_container_screen/iphone_14_pro_sixteen_tab_container_screen.dart';
import 'package:virasat/presentation/iphone_14_pro_fourteen_screen/iphone_14_pro_fourteen_screen.dart';
import 'package:virasat/presentation/iphone_14_pro_fifteen_screen/iphone_14_pro_fifteen_screen.dart';
import 'package:virasat/presentation/iphone_14_pro_nine_screen/iphone_14_pro_nine_screen.dart';
import 'package:virasat/presentation/iphone_14_pro_three_screen/iphone_14_pro_three_screen.dart';
import 'package:virasat/presentation/iphone_14_pro_four_screen/iphone_14_pro_four_screen.dart';
import 'package:virasat/presentation/iphone_14_15_pro_two_screen/iphone_14_15_pro_two_screen.dart';
import 'package:virasat/presentation/iphone_13_14_one_screen/iphone_13_14_one_screen.dart';
import 'package:virasat/presentation/iphone_13_14_four_screen/iphone_13_14_four_screen.dart';
import 'package:virasat/presentation/iphone_14_pro_twelve_container_screen/iphone_14_pro_twelve_container_screen.dart';
import 'package:virasat/presentation/iphone_14_15_pro_one_screen/iphone_14_15_pro_one_screen.dart';
import 'package:virasat/presentation/iphone_14_pro_thirteen_screen/iphone_14_pro_thirteen_screen.dart';
import 'package:virasat/presentation/iphone_14_pro_five_screen/iphone_14_pro_five_screen.dart';
import 'package:virasat/presentation/iphone_13_14_two_screen/iphone_13_14_two_screen.dart';
import 'package:virasat/presentation/iphone_13_14_three_screen/iphone_13_14_three_screen.dart';
import 'package:virasat/presentation/iphone_14_pro_eight_screen/iphone_14_pro_eight_screen.dart';
import 'package:virasat/presentation/iphone_14_pro_ten_screen/iphone_14_pro_ten_screen.dart';
import 'package:virasat/presentation/iphone_13_14_six_tab_container_screen/iphone_13_14_six_tab_container_screen.dart';
import 'package:virasat/presentation/app_navigation_screen/app_navigation_screen.dart';

class AppRoutes {
  static const String iphone14ProOneScreen = '/iphone_14_pro_one_screen';

  static const String iphone14ProSixteenPage = '/iphone_14_pro_sixteen_page';

  static const String iphone14ProSixteenTabContainerScreen =
      '/iphone_14_pro_sixteen_tab_container_screen';

  static const String iphone14ProFourteenScreen =
      '/iphone_14_pro_fourteen_screen';

  static const String iphone14ProFifteenScreen =
      '/iphone_14_pro_fifteen_screen';

  static const String iphone14ProNineScreen = '/iphone_14_pro_nine_screen';

  static const String iphone14ProThreeScreen = '/iphone_14_pro_three_screen';

  static const String iphone14ProFourScreen = '/iphone_14_pro_four_screen';

  static const String iphone1415ProTwoScreen = '/iphone_14_15_pro_two_screen';

  static const String iphone1314OneScreen = '/iphone_13_14_one_screen';

  static const String iphone1314FourScreen = '/iphone_13_14_four_screen';

  static const String iphone14ProTwelvePage = '/iphone_14_pro_twelve_page';

  static const String iphone14ProTwelveContainerScreen =
      '/iphone_14_pro_twelve_container_screen';

  static const String iphone1415ProOneScreen = '/iphone_14_15_pro_one_screen';

  static const String iphone14ProThirteenScreen =
      '/iphone_14_pro_thirteen_screen';

  static const String iphone14ProElevenPage = '/iphone_14_pro_eleven_page';

  static const String iphone14ProFiveScreen = '/iphone_14_pro_five_screen';

  static const String iphone1314TwoScreen = '/iphone_13_14_two_screen';

  static const String iphone1314ThreeScreen = '/iphone_13_14_three_screen';

  static const String iphone14ProEightScreen = '/iphone_14_pro_eight_screen';

  static const String iphone14ProTenScreen = '/iphone_14_pro_ten_screen';

  static const String iphone1314FivePage = '/iphone_13_14_five_page';

  static const String iphone1314SixPage = '/iphone_13_14_six_page';

  static const String iphone1314SixTabContainerScreen =
      '/iphone_13_14_six_tab_container_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static const String initialRoute = '/initialRoute';

  static Map<String, WidgetBuilder> get routes => {
        iphone14ProOneScreen: Iphone14ProOneScreen.builder,
        iphone14ProSixteenTabContainerScreen:
            Iphone14ProSixteenTabContainerScreen.builder,
        iphone14ProFourteenScreen: Iphone14ProFourteenScreen.builder,
        iphone14ProFifteenScreen: Iphone14ProFifteenScreen.builder,
        iphone14ProNineScreen: Iphone14ProNineScreen.builder,
        iphone14ProThreeScreen: Iphone14ProThreeScreen.builder,
        iphone14ProFourScreen: Iphone14ProFourScreen.builder,
        iphone1415ProTwoScreen: Iphone1415ProTwoScreen.builder,
        iphone1314OneScreen: Iphone1314OneScreen.builder,
        iphone1314FourScreen: Iphone1314FourScreen.builder,
        iphone14ProTwelveContainerScreen:
            Iphone14ProTwelveContainerScreen.builder,
        iphone1415ProOneScreen: Iphone1415ProOneScreen.builder,
        iphone14ProThirteenScreen: Iphone14ProThirteenScreen.builder,
        iphone14ProFiveScreen: Iphone14ProFiveScreen.builder,
        iphone1314TwoScreen: Iphone1314TwoScreen.builder,
        iphone1314ThreeScreen: Iphone1314ThreeScreen.builder,
        iphone14ProEightScreen: Iphone14ProEightScreen.builder,
        iphone14ProTenScreen: Iphone14ProTenScreen.builder,
        iphone1314SixTabContainerScreen:
            Iphone1314SixTabContainerScreen.builder,
        appNavigationScreen: AppNavigationScreen.builder,
        initialRoute: Iphone14ProOneScreen.builder
      };
}
