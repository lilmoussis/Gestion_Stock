// ignore_for_file: prefer_const_constructors, unused_local_variable

import 'package:flutter/material.dart';
import 'package:gestion_stock/ui/styles/colors.style.dart';

class DrawerNavigationMenu extends StatelessWidget {
  const DrawerNavigationMenu({
    Key? key,
    required this.child,
  }) : super(key: key);

  final Widget child;

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;

    // Récupérer la largeur de l'écran
    double screenWidth = screenSize.width;

    // Récupérer la hauteur de l'écran
    double screenHeight = screenSize.height;
    return Container(
      height: screenHeight / 14,
      width: screenWidth / 5,
      alignment: Alignment.center,
      color: primaryOpacityColor,
      child: child,
    );
  }
}
