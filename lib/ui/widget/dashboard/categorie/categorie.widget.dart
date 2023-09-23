// ignore_for_file: unused_local_variable, non_constant_identifier_names, sized_box_for_whitespace, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:gestion_stock/ui/styles/colors.style.dart';

class CategorieDashboard extends StatefulWidget {
  const CategorieDashboard({super.key});

  @override
  State<CategorieDashboard> createState() => _CategorieDashboardState();
}

class _CategorieDashboardState extends State<CategorieDashboard> {
  List<String> categories = [
    "Tout",
    "Bières",
    "Sucreries",
    "Alcools",
    "Liqueurs",
    "Liqueurs",
    "Liqueurs",
    "Liqueurs",
    "Liqueurs",
    "Liqueurs",
    "Liqueurs",
    "Liqueurs",
    "Liqueurs",
    "Liqueurs",
    "Liqueurs",
    "Liqueurs",
    "Liqueurs",
    "Liqueurs",
    "Liqueurs",
    "Liqueurs",
    "Liqueurs",
    "Liqueurs",
  ];
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;

    // Récupérer la largeur de l'écran
    double screenWidth = screenSize.width;

    // Récupérer la hauteur de l'écran
    double screenHeight = screenSize.height;
    return SizedBox(
      height: screenHeight / 15,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: categories.length,
        itemBuilder: (context, index) => BuilderCategorie(index),
      ),
    );
  }

  Widget BuilderCategorie(int index) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10),
      child: InkWell(
        onTap: () {
          setState(() {
            selectedIndex = index;
          });
        },
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color:
                selectedIndex == index ? primaryColor : primaryColorTransparent,
          ),
          width: 100,
          child: Center(
            child: Text(
              categories[index],
              style: TextStyle(fontSize: 18, color: secondaryColor),
            ),
          ),
        ),
      ),
    );
  }
}
