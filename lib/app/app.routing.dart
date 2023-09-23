import 'package:gestion_stock/app/routes.dart';
import 'package:gestion_stock/ui/screens/dashboard/dashboard.screen.dart';
import 'package:gestion_stock/ui/screens/login/login.screens.dart';
import 'package:gestion_stock/ui/screens/profil/profil.dart';
import 'package:gestion_stock/ui/screens/sales/sales.dart';
import 'package:get/get.dart';

import '../ui/screens/Report/report.dart';
import '../ui/screens/splash/splash.screen.dart';

class AppRouting {
  static final List<GetPage> appRoutes = [
    GetPage(
      name: Routes.splash,
      page: () => const SplashScreen(),
      transition: Transition.fade,
      transitionDuration: const Duration(milliseconds: 350),
    ),
    GetPage(
      name: Routes.dashboard,
      page: () => const DashboardScreen(),
      transition: Transition.fade,
      transitionDuration: const Duration(milliseconds: 350),
    ),
    GetPage(
      name: Routes.login,
      page: () => const LoginScreen(),
      transition: Transition.fade,
      transitionDuration: const Duration(milliseconds: 350),
    ),
    GetPage(
      name: Routes.profil,
      page: () => const ProfilScreen(),
      transition: Transition.fade,
      transitionDuration: const Duration(milliseconds: 350),
    ),
    GetPage(
      name: Routes.sales,
      page: () => const Sales(),
      transition: Transition.fade,
      transitionDuration: const Duration(milliseconds: 350),
    ),
    GetPage(
      name: Routes.report,
      page: () => const Report(),
      transition: Transition.fade,
      transitionDuration: const Duration(milliseconds: 350),
    ),
  ];
}
