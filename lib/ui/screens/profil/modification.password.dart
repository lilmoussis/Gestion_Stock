// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sort_child_properties_last

import 'package:flutter/material.dart';
import '../../styles/colors.style.dart';
import 'package:animator/animator.dart';

class ModifPassword extends StatefulWidget {
  const ModifPassword({super.key});

  @override
  State<ModifPassword> createState() => _ModifPasswordState();
}

class _ModifPasswordState extends State<ModifPassword> {
  bool isHovered = false;

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;

    // Récupérer la largeur de l'écran
    double screenWidth = screenSize.width;

    // Récupérer la hauteur de l'écran
    double screenHeight = screenSize.height;
    // bool isHovered = false;
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50),
        color: profilColor12,
      ),
      width: screenWidth * 0.45,
      height: screenHeight * 1,
      child: Column(
        children: [
          Row(
            children: [
              //first line of password modification

              Padding(
                padding: const EdgeInsets.only(top: 29, left: 48),
                child: Row(
                  children: [
                    Center(
                      child: Text(
                        "Modification du mot de passe",
                        style: TextStyle(color: Colors.black, fontSize: 30),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20, left: 50),
            child: Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Mot de passe actuel",
                      style: TextStyle(color: Colors.black, fontSize: 22),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    SizedBox(
                      height: 50,
                      width: 450,
                      child: TextField(
                        decoration: InputDecoration(
                            labelText: 'Mot de passe actuel',
                            labelStyle: TextStyle(color: primaryColor),
                            filled: true,
                            fillColor: secondaryColor,
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: primaryColor),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            border: OutlineInputBorder(
                                borderSide: BorderSide(color: primaryColor),
                                borderRadius: BorderRadius.circular(10))),
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
          SizedBox(
            height: 30,
          ),

          //second line of password modification

          Padding(
            padding: const EdgeInsets.only(top: 20, left: 50),
            child: Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Nouveau mot de passe",
                      style: TextStyle(color: Colors.black, fontSize: 22),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    SizedBox(
                      height: 50,
                      width: 450,
                      child: TextField(
                        decoration: InputDecoration(
                            labelText: 'Nouveau mot de passe',
                            labelStyle: TextStyle(color: primaryColor),
                            filled: true,
                            fillColor: secondaryColor,
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: primaryColor),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            border: OutlineInputBorder(
                                borderSide: BorderSide(color: primaryColor),
                                borderRadius: BorderRadius.circular(10))),
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
          SizedBox(
            height: 30,
          ),

          //third line of password modification

          Padding(
            padding: const EdgeInsets.only(top: 20, left: 50),
            child: Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Confirmer le mot de passe",
                      style: TextStyle(color: Colors.black, fontSize: 22),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    SizedBox(
                      height: 50,
                      width: 450,
                      child: TextField(
                        decoration: InputDecoration(
                            labelText: 'Confirmer le mot de passe',
                            labelStyle: TextStyle(color: primaryColor),
                            filled: true,
                            fillColor: secondaryColor,
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: primaryColor),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            border: OutlineInputBorder(
                                borderSide: BorderSide(color: primaryColor),
                                borderRadius: BorderRadius.circular(10))),
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
          SizedBox(
            height: 50,
          ),
          SizedBox(
            height: 30,
            width: 200,
            child: MouseRegion(
              onEnter: (event) {
                setState(() {
                  isHovered = true;
                });
              },
              onExit: (event) {
                setState(() {
                  isHovered = false;
                });
              },
              child: Animator(
                tweenMap: {
                  'background':
                      ColorTween(begin: primaryColor, end: secondaryColor),
                  'textColor':
                      ColorTween(begin: secondaryColor, end: primaryColor),
                },
                cycles: 1,
                builder: (context, animatorState, child) {
                  return ElevatedButton(
                    onPressed: () {
                      // Get.toNamed(Routes.profil);
                    },
                    style: ButtonStyle(
                      backgroundColor: MaterialStateColor.resolveWith(
                        (states) => isHovered
                            ? animatorState.getValue('background')
                            : primaryColor,
                      ),
                      foregroundColor: MaterialStateColor.resolveWith(
                        (states) => isHovered
                            ? animatorState.getValue('textColor')
                            : secondaryColor,
                      ),
                    ),
                    child: child,
                  );
                },
                child: Text('Sauvegarder'),
                triggerOnInit: true,
                duration: Duration(milliseconds: 300),
                curve: Curves.easeInOut,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
