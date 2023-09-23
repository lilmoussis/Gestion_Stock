// ignore_for_file: non_constant_identifier_names

import 'dart:math';

import 'package:art_sweetalert/art_sweetalert.dart';
import 'package:flutter/material.dart';
import 'package:gestion_stock/ui/styles/colors.style.dart';
import 'package:get/get.dart';

void ShowSimpleAlert(
    BuildContext context, String? title, String? message, String buttonText) {
  showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
          title: Text(
            title!,
            style: const TextStyle(
              color: secondaryColor,
              fontSize: 20,
            ),
          ),
          content: Text(
            message!,
            style: const TextStyle(
              color: textPrimaryColor,
            ),
          ),
          actions: [
            TextButton(
              onPressed: () => Get.back(),
              child: Text(
                buttonText,
                style: const TextStyle(
                  color: primaryColor,
                ),
              ),
            ),
          ],
        );
      });
}

Future<dynamic> confirmAlert(
  BuildContext context,
  String? title,
  String message,
  String confirmButtonText,
  String cancelButtonText,
  dynamic Function() onConfirm,
) {
  return showDialog(
    context: context,
    barrierDismissible: false,
    builder: (BuildContext context) {
      return AlertDialog(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        title: title != null
            ? Text(
                title,
                style: const TextStyle(
                  color: textSecondaryColor,
                  fontSize: 20,
                ),
              )
            : null,
        content: Text(
          message,
          style: const TextStyle(
            color: textPrimaryColor,
          ),
        ),
        actionsAlignment: MainAxisAlignment.spaceAround,
        actions: [
          OutlinedButton(
            onPressed: () => Get.back(result: false),
            style: OutlinedButton.styleFrom(
              side: const BorderSide(color: dangerColor, width: 1.5),
            ),
            child: Text(
              cancelButtonText,
              style: const TextStyle(
                color: dangerColor,
              ),
            ),
          ),
          OutlinedButton(
            onPressed: onConfirm,
            style: OutlinedButton.styleFrom(
              side: const BorderSide(color: primaryColor, width: 1.5),
            ),
            child: Text(
              confirmButtonText,
              style: const TextStyle(
                color: primaryColor,
              ),
            ),
          ),
        ],
      );
    },
  );
}

void showSnackbar(
    {required String title,
    required String message,
    required Color backgroundcolor}) {
  Get.snackbar(
    title,
    message,
    colorText: primaryColor,
    backgroundColor: dangerColor,
    snackPosition: SnackPosition.TOP,
  );
}

void showCustomSweetAlert(BuildContext context, ArtDialogArgs dialogArgs) {
  ArtSweetAlert.show(
    context: context,
    artDialogArgs: dialogArgs,
  );
}

String generateRandomReference() {
  // Obtenir la date du jour
  DateTime now = DateTime.now();

  // Générer trois chiffres aléatoires
  int randomDigits = Random().nextInt(900) + 100;

  // Créer la référence en combinant la date et les chiffres aléatoires
  String reference =
      '${now.year}${now.month.toString().padLeft(2, '0')}${now.day.toString().padLeft(2, '0')}_$randomDigits';

  return reference;
}
