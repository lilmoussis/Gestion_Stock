// ignore_for_file: prefer_const_constructors, unused_local_variable

import 'package:flutter/material.dart';
import 'package:gestion_stock/app/routes.dart';
import 'package:gestion_stock/features/constants.features.dart';
import 'package:get/get.dart';

import '../../styles/colors.style.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    // Récupérer la taille de l'écran
    Size screenSize = MediaQuery.of(context).size;

    // Récupérer la largeur de l'écran
    double screenWidth = screenSize.width;

    // Récupérer la hauteur de l'écran
    double screenHeight = screenSize.height;
    return Scaffold(
        body: Stack(
      children: [
        Container(
          height: screenHeight,
          width: screenWidth,
          color: primaryColor,
        ),
        Positioned(
            top: screenHeight * 0.4,
            left: screenWidth * 0,
            right: screenWidth * 0,
            child: Container(
              color: secondaryColor,
              height: screenHeight * 0.7,
            )),
        Positioned(
          top: screenHeight * 0.1,
          width: screenWidth * 1,
          child: Container(
            alignment: Alignment.center,
            child: Text(
              APP_NAME,
              style: TextStyle(
                fontSize: 74,
                color: secondaryColor,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
            top: screenHeight * 0.2,
            right: screenWidth * 0,
          ),
          child: Center(
            child: Container(
              width: 500,
              height: 450,
              decoration: BoxDecoration(
                color: secondaryColor,
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                    color: greyColor.withOpacity(0.5),
                    spreadRadius: 2,
                    blurRadius: 20,
                    offset: const Offset(-3, 0),
                  ),
                ],
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 100, top: 50, right: 100),
                child: Form(
                    child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 0, bottom: 50),
                      child: Text(
                        "Connexion",
                        style: TextStyle(
                          fontSize: 45,
                          color: darkColor,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 0, bottom: 20),
                      child: TextFormField(
                        decoration: const InputDecoration(
                          labelText: 'Login',
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: primaryColor),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(15.0))),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 0, bottom: 20),
                      child: TextFormField(
                        obscureText: true,
                        // maxLength: 8,
                        decoration: const InputDecoration(
                          labelText: 'Mot de passe',
                          // hintText: 'Entrez votre mot de passe',
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: primaryColor),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(15.0))),
                        ),
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        Get.toNamed(Routes.dashboard);
                      },
                      style: ButtonStyle(
                        backgroundColor: MaterialStateColor.resolveWith(
                            (states) => primaryColor),
                      ),
                      child: Text('Se Connecter'),
                    ),
                  ],
                )),
              ),
            ),
          ),
        ),
      ],
    ));
  }
}
