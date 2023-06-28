
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:get_storage/get_storage.dart';

import 'Feature/common/flutter_dev.dart';
import 'Feature/presentation/manager/color_provider.dart';
import 'Feature/presentation/manager/dashbord.dart';
import 'Feature/presentation/manager/riding.dart';
import 'Feature/presentation/manager/userActivity.dart';




void main() async{
  // WidgetsFlutterBinding.ensureInitialized();
   await GetStorage.init();
 SharedPreferences.getInstance().then((prefs) {
      runApp(
        MultiProvider(
          providers: [
            ChangeNotifierProvider(create: (_) => ColorProvider()),
            ChangeNotifierProvider(create: (_) => UserActivity()),
            ChangeNotifierProvider(create: (_) => DashBord()),
            ChangeNotifierProvider(create: (_) => Riding()),
          ],
          child: const FlutterDev(),
        ),
      );
    });

}

