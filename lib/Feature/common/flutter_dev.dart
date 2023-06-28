
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:walk_mate/Feature/common/route/route_generate.dart';
import 'package:walk_mate/Feature/common/string/color_string.dart';
import 'package:walk_mate/Feature/common/string/route_string.dart';
import 'package:walk_mate/Feature/presentation/manager/riding.dart';

import '../presentation/manager/dashbord.dart';

class FlutterDev extends StatelessWidget {
  const FlutterDev({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var data = Provider.of<DashBord>(context, listen: false);
    var riding = Provider.of<Riding>(context, listen: false);
    data.getData();
    data.getRides();
    riding.getHistoryData();
    riding.getHistoryData();
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          appBarTheme: const AppBarTheme(
              color: AppColors.skyBlue
          ),
          visualDensity: VisualDensity.adaptivePlatformDensity,
          scaffoldBackgroundColor: AppColors.white,
          primaryColor: AppColors.skyBlue),
      initialRoute: RouteString.initialRoute,
      onGenerateRoute: AppRoutes().ongenerateRoute,
    );
  }
}