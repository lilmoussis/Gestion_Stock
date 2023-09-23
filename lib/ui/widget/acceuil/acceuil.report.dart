// ignore_for_file: unused_local_variable, prefer_const_constructors, unused_element, unused_field, prefer_final_fields

import 'package:flutter/material.dart';
import 'package:gestion_stock/ui/models/products/products.models.dart';
import 'package:gestion_stock/ui/styles/colors.style.dart';
import 'package:gestion_stock/ui/widget/cart/cart.widget.dart';
import 'package:gestion_stock/ui/widget/dashboard/categorie/categorie.widget.dart';

class AcceuilReport extends StatefulWidget {
  const AcceuilReport({super.key});

  @override
  State<AcceuilReport> createState() => _AcceuilReportState();
}

class _AcceuilReportState extends State<AcceuilReport> {
  TextEditingController _searchController = TextEditingController();
  List<Products> filteredProducts = [...products];

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;

    // Récupérer la largeur de l'écran
    double screenWidth = screenSize.width;

    // Récupérer la hauteur de l'écran
    double screenHeight = screenSize.height;
    return Row(
      children: [
        Expanded(
          flex: 10,
          child: Column(
            children: [
              Padding(
                  padding: EdgeInsets.symmetric(horizontal: 40, vertical: 40),
                  child: Text(
                    "Rapport du jour",
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  )),
              SizedBox(
                height: screenHeight / 20,
              ),
              Expanded(
                  child: Container(
                      color: Colors.white,
                      padding: EdgeInsets.all(10),
                      child: SingleChildScrollView(
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Row(
                              children: [
                                Container(
                                  padding: EdgeInsets.only(right: 20),
                                  child: Icon(Icons.check_circle,
                                      color: addCoinColor, size: 50),
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      padding: EdgeInsets.only(bottom: 20),
                                      child: Text(
                                        "Vente : #948585",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                    Row(
                                      children: [
                                        Text('QTE :'),
                                        SizedBox(width: 30),
                                        Text(
                                          "5",
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold),
                                        )
                                      ],
                                    ),
                                  ],
                                ),
                                SizedBox(width: 700),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.only(bottom: 20),
                                      child:
                                          Text('Date:     11/08/2023    10:00'),
                                    ),
                                    Row(
                                      children: [
                                        Text("Total:"),
                                        SizedBox(width: 20),
                                        Text(
                                          "25000 FCFA",
                                          style: TextStyle(
                                            color: Colors.orange,
                                            fontSize: 19,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            SizedBox(height: 20),
                            Column(
                              children: List.generate(
                                10,
                                (index) => Column(
                                  children: [
                                    Column(
                                      children: [
                                        Row(
                                          children: [
                                            Container(
                                              padding: EdgeInsets.all(10),
                                              decoration: BoxDecoration(
                                                border: Border.all(
                                                    width: 2,
                                                    color: Colors.orange),
                                              ),
                                              child: Container(
                                                padding: EdgeInsets.all(10),
                                                width: 70, // Largeur souhaitée
                                                height: 70, // Hauteur souhaitée
                                                child: Image.asset(
                                                    "assets/images/coca_cola_33cl.jpg"),
                                              ),
                                            ),
                                            Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.end,
                                              children: [
                                                Text(
                                                  "Coca-Cola",
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.bold),
                                                ),
                                                Text("Sucrerie",
                                                    style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.bold)),
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.all(8.0),
                                                  child: Text(
                                                      "QTE = 5x1500 FCFA",
                                                      style: TextStyle(
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          color:
                                                              Colors.orange)),
                                                )
                                              ],
                                            ),
                                            SizedBox(width: 750),
                                            Text("2500FCFA",
                                                style: TextStyle(
                                                    color: Colors.orange))
                                          ],
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                        height: 10), // Espace entre les images
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ))),
            ],
          ),
        ),
      ],
    );
  }

  // void _addProductPanier(Products item) {
  //   setState(() {
  //     panierProduit.add(item);
  //   });
  // }
}
