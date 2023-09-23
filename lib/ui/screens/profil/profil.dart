// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers, unused_local_variable, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:gestion_stock/ui/screens/profil/modification.password.dart';
import 'package:gestion_stock/ui/screens/profil/modification.request.dart';
import 'package:gestion_stock/ui/screens/profil/personnal.information.profil.dart';
import 'package:gestion_stock/ui/styles/colors.style.dart';

class ProfilScreen extends StatefulWidget {
  const ProfilScreen({super.key});

  @override
  State<ProfilScreen> createState() => _ProfilScreenState();
}

class _ProfilScreenState extends State<ProfilScreen> {
  var selectindex = 0;

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;

    // Récupérer la largeur de l'écran
    double screenWidth = screenSize.width;

    // Récupérer la hauteur de l'écran
    double screenHeight = screenSize.height;

    // int _selectedValue = 1;

    // List<Map<String, dynamic>> _radioValues = [
    //   {"label": "Homme", "value": 1},
    //   {"label": "Femme", "value": 2},
    // ];
    return Scaffold(
      body: SafeArea(
        child: Row(
          children: [
            // Expanded(
            //   flex: 2,
            //   child: DrawerWidget(),
            // ),
            Expanded(
                flex: 10,
                child: Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(
                          left: 20, right: 80, bottom: 150, top: 24),
                      child: Container(
                          width: screenWidth / 3.5,
                          height: screenHeight * 0.7,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            color: profilColor1,
                          ),
                          child: Column(
                            children: [
                              Container(
                                height: screenHeight / 7,
                                width: screenWidth / 19,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  image: DecorationImage(
                                    image: AssetImage(
                                        "assets/images/personne.jpg"),
                                  ),
                                ),
                              ),
                              Text(
                                "Michel Ahoba",
                                style: TextStyle(
                                    color: Colors.black, fontSize: 32),
                              ),
                              Padding(
                                padding: EdgeInsets.only(top: 10),
                                child: InkWell(
                                  onTap: () {
                                    setState(() {
                                      selectindex = 0;
                                    });
                                    // Get.toNamed(Routes.dashboard);
                                  },
                                  child: Text(
                                    "Informations personnelles",
                                    style: TextStyle(
                                        color: primaryColor,
                                        fontSize: 20,
                                        fontWeight: selectindex == 0
                                            ? FontWeight.bold
                                            : FontWeight.normal),
                                  ),
                                ),
                              ),
                              // Padding(
                              //   padding: const EdgeInsets.only(top: 10),
                              //   child: InkWell(
                              //     onTap: () {
                              //       setState(() {
                              //         selectindex = 1;
                              //       });
                              //       // Get.toNamed(Routes.dashboard);
                              //     },
                              //     child: Text(
                              //       "Demande de modification",
                              //       style: TextStyle(
                              //           color: primaryColor,
                              //           fontSize: 20,
                              //           fontWeight: selectindex == 1
                              //               ? FontWeight.bold
                              //               : FontWeight.normal),
                              //     ),
                              //   ),
                              // ),
                              Padding(
                                padding: const EdgeInsets.only(top: 10),
                                child: InkWell(
                                  onTap: () {
                                    setState(() {
                                      selectindex = 2;
                                    });
                                    // Get.toNamed(Routes.dashboard);
                                  },
                                  child: Text(
                                    "Modification du mot de passe oublié",
                                    style: TextStyle(
                                        color: primaryColor,
                                        fontSize: 20,
                                        fontWeight: selectindex == 2
                                            ? FontWeight.bold
                                            : FontWeight.normal),
                                  ),
                                ),
                              ),
                            ],
                          )),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 38, bottom: 24),
                      child: getContentWidget(),
                    )
                  ],
                )),
          ],
        ),
      ),
    );
  }

  getContentWidget() {
    if (selectindex == 0) {
      return PersonalInfo();
    } else if (selectindex == 1) {
      return ModifRequest();
    } else if (selectindex == 2) {
      return ModifPassword();
    } else {
      return Container(
        child: Text("data"),
      );
    }
  }
}
