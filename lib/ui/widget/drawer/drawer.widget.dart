// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers, unused_local_variable, sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:gestion_stock/app/routes.dart';
import 'package:gestion_stock/features/constants.features.dart';
import 'package:gestion_stock/ui/styles/colors.style.dart';
import 'package:gestion_stock/ui/widget/drawer/drawernavigation.widget.dart';
import 'package:get/get.dart';
// import 'package:get/get_core/src/get_main.dart';

class DrawerWidget extends StatefulWidget {
  const DrawerWidget({super.key});

  @override
  State<DrawerWidget> createState() => _DrawerWidgetState();
}

class _DrawerWidgetState extends State<DrawerWidget> {
  @override
  Widget build(BuildContext context) {
    Size? screenSize = MediaQuery.of(context).size;
    double screenWidth = screenSize.width;
    double screenHeight = screenSize.height;
    int selectindex = 0;

    return Drawer(
      elevation: 0,
      child: Container(
        width: double.infinity,
        height: screenHeight,
        color: primaryColor,
        child: Column(
          children: [
            SizedBox(
              height: screenHeight / 50,
            ),
            Container(
              child: Text(
                APP_NAME,
                style: TextStyle(fontSize: 24, color: secondaryColor),
              ),
            ),
            SizedBox(
              height: screenHeight / 20,
            ),
            DrawerNavigationMenu(
              child: InkWell(
                onTap: () {
                  selectindex == 1;
                  setState(() {});
                  Get.toNamed(Routes.dashboard);
                },
                child: Text(
                  "Acceuil",
                  style: TextStyle(fontSize: 24, color: secondaryColor),
                ),
              ),
            ),
            SizedBox(
              height: screenHeight / 42,
            ),
            DrawerNavigationMenu(
              child: InkWell(
                onTap: () {},
                child: Text(
                  "Ventes",
                  style: TextStyle(fontSize: 24, color: secondaryColor),
                ),
              ),
            ),
            SizedBox(
              height: screenHeight / 42,
            ),
            DrawerNavigationMenu(
              child: InkWell(
                onTap: () {},
                child: Text(
                  "Rapport",
                  style: TextStyle(fontSize: 24, color: secondaryColor),
                ),
              ),
            ),
            SizedBox(
              height: screenHeight * 0.45,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                InkWell(
                  onTap: () {
                    Get.toNamed(Routes.profil);
                  },
                  child: Container(
                    height: screenHeight / 8,
                    width: screenWidth / 19,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        image: AssetImage("assets/images/personne.jpg"),
                      ),
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    Get.toNamed(Routes.profil);
                  },
                  child: Text(
                    "Michel Ahoba",
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
