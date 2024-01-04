import 'bloc/iphone_14_pro_twelve_container_bloc.dart';
import 'models/iphone_14_pro_twelve_container_model.dart';
import 'package:flutter/material.dart';
import 'package:virasat/core/app_export.dart';
import 'package:virasat/presentation/iphone_14_pro_eleven_page/iphone_14_pro_eleven_page.dart';
import 'package:virasat/presentation/iphone_14_pro_twelve_page/iphone_14_pro_twelve_page.dart';
import 'package:virasat/widgets/custom_bottom_bar.dart';

// ignore_for_file: must_be_immutable
class Iphone14ProTwelveContainerScreen extends StatelessWidget {
  Iphone14ProTwelveContainerScreen({Key? key}) : super(key: key);

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  static Widget builder(BuildContext context) {
    return BlocProvider<Iphone14ProTwelveContainerBloc>(
        create: (context) => Iphone14ProTwelveContainerBloc(
            Iphone14ProTwelveContainerState(
                iphone14ProTwelveContainerModelObj:
                    Iphone14ProTwelveContainerModel()))
          ..add(Iphone14ProTwelveContainerInitialEvent()),
        child: Iphone14ProTwelveContainerScreen());
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<Iphone14ProTwelveContainerBloc,
        Iphone14ProTwelveContainerState>(builder: (context, state) {
      return SafeArea(
          child: Scaffold(
              body: Navigator(
                  key: navigatorKey,
                  initialRoute: AppRoutes.iphone14ProTwelvePage,
                  onGenerateRoute: (routeSetting) => PageRouteBuilder(
                      pageBuilder: (ctx, ani, ani1) =>
                          getCurrentPage(context, routeSetting.name!),
                      transitionDuration: Duration(seconds: 0))),
              bottomNavigationBar: _buildBottomBar(context)));
    });
  }

  /// Section Widget
  Widget _buildBottomBar(BuildContext context) {
    return CustomBottomBar(onChanged: (BottomBarEnum type) {
      Navigator.pushNamed(navigatorKey.currentContext!, getCurrentRoute(type));
    });
  }

  ///Handling route based on bottom click actions
  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Home:
        return AppRoutes.iphone14ProTwelvePage;
      case BottomBarEnum.Addproduct:
        return AppRoutes.iphone14ProElevenPage;
      case BottomBarEnum.Menu:
        return "/";
      default:
        return "/";
    }
  }

  ///Handling page based on route
  Widget getCurrentPage(
    BuildContext context,
    String currentRoute,
  ) {
    switch (currentRoute) {
      case AppRoutes.iphone14ProTwelvePage:
        return Iphone14ProTwelvePage();
      case AppRoutes.iphone14ProElevenPage:
        return Iphone14ProElevenPage();
      default:
        return DefaultWidget();
    }
  }
}
