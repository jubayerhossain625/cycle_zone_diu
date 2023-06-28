
import 'package:flutter/material.dart';
import 'package:walk_mate/Feature/presentation/pages/splash/entryHome.dart';
import 'package:walk_mate/Feature/presentation/pages/splash/splash_page.dart';
import '../../presentation/pages/home/home_page.dart';
import '../../presentation/pages/login/login_page.dart';
import '../../presentation/pages/user/dashbord/qrscanner.dart';
import '../../presentation/pages/user/dashbord/userHome.dart';
import '../../presentation/pages/user/ride/ride_page.dart';
import '../../presentation/pages/user/thanks/thanks.dart';
import '../string/route_string.dart';

import 'package:page_transition/page_transition.dart';

class AppRoutes{

  Route<dynamic> ongenerateRoute(RouteSettings settings) {
    final arg = settings.arguments;

    switch (settings.name) {

      case RouteString.initialRoute:
        return MaterialPageRoute(builder: (builder) => SplashPage());
      case RouteString.entryHome:
        return MaterialPageRoute(builder: (builder) => const EntryHome());

      case RouteString.home:
        return PageTransition(
           child: const HomePage(),
            type: PageTransitionType.fade);

      case RouteString.login:
        return PageTransition(
            child: const LoginPage(),
            type: PageTransitionType.fade);

      case RouteString.qrScanner:
        return PageTransition(
            child: const QRScan(),
            type: PageTransitionType.fade);

      case RouteString.ridingPage:
        int cycleID = arg as int;
        return PageTransition(
            child:  RidingPage(cycleID: cycleID),
            type: PageTransitionType.fade);

      case RouteString.thankPage:
        var cost = arg as String;
        return PageTransition(

            child:  ThanksPage(cost: cost,),
            type: PageTransitionType.fade);
      case RouteString.userHome:
        return PageTransition(
            child: const UserHome(),
            type: PageTransitionType.fade);


      default:
        return errorRoutes();
    }
  }

  errorRoutes() {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Error Route Occurred"),
      ),
    );
  }

}