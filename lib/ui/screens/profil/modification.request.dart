// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

import '../../styles/colors.style.dart';

class ModifRequest extends StatefulWidget {
  const ModifRequest({super.key});

  @override
  State<ModifRequest> createState() => _ModifRequestState();
}

class _ModifRequestState extends State<ModifRequest> {
  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;

    // Récupérer la largeur de l'écran
    double screenWidth = screenSize.width;

    // Récupérer la hauteur de l'écran
    double screenHeight = screenSize.height;
    return Container(
      width: screenWidth * 0.58,
      height: screenHeight * 1,
      color: profilColor12,
      child: Column(
        children: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 29, left: 48),
                child: Row(
                  children: [
                    Text(
                      "Modification Request",
                      style: TextStyle(color: Colors.black, fontSize: 22),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
