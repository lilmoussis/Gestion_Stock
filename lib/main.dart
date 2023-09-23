import 'package:flutter/material.dart';
import 'package:gestion_stock/ui/styles/colors.style.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

import 'app/app.routing.dart';
import 'app/routes.dart';
import 'features/constants.features.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: APP_NAME,
      color: pageBackgroundColor,
      theme: ThemeData(
        scaffoldBackgroundColor: pageBackgroundColor,
      ),
      // darkTheme: AppTheme.dark,
      getPages: AppRouting.appRoutes,
      initialRoute: Routes.splash,
      // supportedLocales: const [
      //   Locale('fr', ''),
      //   Locale('en', ''),
      // ],
    );
  }
}
