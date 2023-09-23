// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:gestion_stock/ui/styles/colors.style.dart';

class PersonalInfo extends StatefulWidget {
  const PersonalInfo({super.key});

  @override
  State<PersonalInfo> createState() => _PersonalInfoState();
}

class _PersonalInfoState extends State<PersonalInfo> {
  List<String> options = ['Homme', 'Femme'];
  String selectedOption = 'Homme';

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;

    // Récupérer la largeur de l'écran
    double screenWidth = screenSize.width;

    // Récupérer la hauteur de l'écran
    double screenHeight = screenSize.height;
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50),
        color: profilColor12,
      ),
      width: screenWidth * 0.45,
      height: screenHeight * 1,
      child: Column(
        children: [
          // for first line of personnal information profil

          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 22, left: 50),
                child: Row(
                  children: [
                    Text(
                      "Homme",
                      style: TextStyle(color: darkColor, fontSize: 22),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Radio(
                      value: 'Homme',
                      groupValue: selectedOption,
                      onChanged: null,
                      // (value) {
                      //   setState(() {
                      //     selectedOption = value as String;
                      //   });
                      // },
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Text(
                      "Femme",
                      style: TextStyle(color: darkColor, fontSize: 22),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Radio(
                      value: 'Femme',
                      groupValue: selectedOption,
                      onChanged: null,
                      // (value) {
                      //   setState(() {
                      //     selectedOption = value as String;
                      //   });
                      // },
                    ),
                  ],
                ),
              ),
            ],
          ),

          // for second line of personnal information profil

          Padding(
            padding: const EdgeInsets.only(top: 20, left: 50),
            child: Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Nom",
                      style: TextStyle(color: Colors.black, fontSize: 22),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    SizedBox(
                      height: 50,
                      width: 200,
                      child: TextField(
                        enabled: false,
                        decoration: InputDecoration(
                            labelText: 'Ahoba',
                            labelStyle: TextStyle(color: primaryColor),
                            filled: true,
                            fillColor: secondaryColor,
                            // hintText: 'Entrez votre nom',
                            border: OutlineInputBorder(
                                borderSide: BorderSide(color: primaryColor),
                                borderRadius: BorderRadius.circular(10))),
                      ),
                    )
                  ],
                ),
                SizedBox(
                  width: 50,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Prénoms",
                      style: TextStyle(color: Colors.black, fontSize: 22),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    SizedBox(
                      height: 50,
                      width: 200,
                      child: TextField(
                        enabled: false,
                        decoration: InputDecoration(
                            labelText: 'Michel',
                            labelStyle: TextStyle(color: primaryColor),
                            filled: true,
                            fillColor: secondaryColor,
                            // hintText: 'Entrez votre nom',
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

          // for third line of personnal information profil

          Padding(
            padding: const EdgeInsets.only(top: 20, left: 50),
            child: Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Email",
                      style: TextStyle(color: Colors.black, fontSize: 22),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    SizedBox(
                      height: 50,
                      width: 450,
                      child: TextField(
                        enabled: false,
                        decoration: InputDecoration(
                            labelText: 'AhobaMichel02@gmail.com',
                            labelStyle: TextStyle(color: primaryColor),
                            filled: true,
                            fillColor: secondaryColor,
                            // hintText: 'Entrez votre nom',
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

          // for four line of personnal information profil

          Padding(
            padding: const EdgeInsets.only(top: 20, left: 50),
            child: Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Adresse",
                      style: TextStyle(color: Colors.black, fontSize: 22),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    SizedBox(
                      height: 50,
                      width: 450,
                      child: TextField(
                        enabled: false,
                        decoration: InputDecoration(
                            labelText: 'Rue Paul Lanjuvlin 254',
                            labelStyle: TextStyle(color: primaryColor),
                            filled: true,
                            fillColor: secondaryColor,
                            // hintText: 'Entrez votre nom',
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
          Padding(
            padding: const EdgeInsets.only(top: 20, left: 50),
            child: Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Numéro de Téléphone",
                      style: TextStyle(color: Colors.black, fontSize: 22),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    SizedBox(
                      height: 50,
                      width: 200,
                      child: TextField(
                        enabled: false,
                        decoration: InputDecoration(
                            labelText: '+225 01 51 78 17 16',
                            labelStyle: TextStyle(color: primaryColor),
                            filled: true,
                            fillColor: secondaryColor,
                            // hintText: 'Entrez votre nom',
                            border: OutlineInputBorder(
                                borderSide: BorderSide(color: primaryColor),
                                borderRadius: BorderRadius.circular(10))),
                      ),
                    )
                  ],
                ),
                SizedBox(
                  width: 50,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Profil",
                      style: TextStyle(color: Colors.black, fontSize: 22),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    SizedBox(
                      height: 50,
                      width: 200,
                      child: TextField(
                        enabled: false,
                        decoration: InputDecoration(
                            labelText: 'Caissier',
                            labelStyle: TextStyle(color: primaryColor),
                            filled: true,
                            fillColor: secondaryColor,
                            // hintText: 'Entrez votre nom',
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
        ],
      ),
    );
  }
}
