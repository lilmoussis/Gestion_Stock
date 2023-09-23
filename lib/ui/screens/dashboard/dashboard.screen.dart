// ignore_for_file: prefer_const_constructors, unused_local_variable, sized_box_for_whitespace, prefer_const_literals_to_create_immutables, non_constant_identifier_names, avoid_unnecessary_containers, unused_element, avoid_print

import 'package:flutter/material.dart';
import 'package:gestion_stock/features/constants.features.dart';
import 'package:gestion_stock/ui/screens/acceuil/acceuil.screen.dart';
import 'package:gestion_stock/ui/screens/profil/profil.dart';
import 'package:gestion_stock/ui/styles/colors.style.dart';
import '../Report/report.dart';
import '../sales/sales.dart';
// import 'package:gestion_stock/features/constants.features.dart';

// import '../../styles/colors.style.dart';
// import '../../widget/drawer/drawer.widget.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});
  // final int selectindex;

//   Widget getContentWidget() {
//   if (selectindex == 1) {
//     return AcceuilScreen();
//   } else if (selectindex == 3) {
//     return ProfilScreen();
//   } else {
//     return Container(
//       child: Text("data"),
//     );
//   }
// }

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  var selectindex = 0;

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;

    // Récupérer la largeur de l'écran
    double screenWidth = screenSize.width;

    // Récupérer la hauteur de l'écran
    double screenHeight = screenSize.height;
    // int selectindex = 0;
    return Scaffold(
      body: Row(
        children: [
          Expanded(
            flex: 2,
            child: Drawer(
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
                    Container(
                      height: screenHeight / 14,
                      width: screenWidth / 5,
                      alignment: Alignment.center,
                      color: selectindex == 0 ? primaryColorTransparent : null,
                      child: InkWell(
                        onTap: () {
                          setState(() {
                            selectindex = 0;
                          });
                          print(selectindex);
                          // Get.toNamed(Routes.dashboard);
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
                    Container(
                      height: screenHeight / 14,
                      width: screenWidth / 5,
                      alignment: Alignment.center,
                      color: selectindex == 1 ? primaryColorTransparent : null,
                      child: InkWell(
                        onTap: () {
                          setState(() {
                            selectindex = 1;
                          });
                          print(selectindex);
                        },
                        child: Text(
                          "Ventes",
                          style: TextStyle(fontSize: 24, color: secondaryColor),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: screenHeight / 42,
                    ),
                    Container(
                      height: screenHeight / 14,
                      width: screenWidth / 5,
                      alignment: Alignment.center,
                      color: selectindex == 2 ? primaryColorTransparent : null,
                      child: InkWell(
                        onTap: () {
                          setState(() {
                            selectindex = 2;
                            print(selectindex);
                          });
                        },
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
                            setState(() {
                              selectindex = 3;
                            });
                            print(selectindex);

                            // Get.toNamed(Routes.profil);
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
                        Text(
                          "Michel Ahoba",
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
          Expanded(
            flex: 13,
            child: getContentWidget(),
          ),
          // Expanded(
          //   flex: 3,
          //   child: CartWidget(),
          // ),
        ],
      ),
    );
  }

  getContentWidget() {
    if (selectindex == 0) {
      return AcceuilScreen();
    } else if (selectindex == 3) {
      return ProfilScreen();
    } else if (selectindex == 1) {
      return Sales();
    } else if (selectindex == 2) {
      return Report();
    }
  }
}
