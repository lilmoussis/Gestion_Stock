// ignore_for_file: unused_local_variable, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:gestion_stock/ui/models/products/products.models.dart';
import 'package:gestion_stock/ui/models/ventes/ventes.models.dart';
import 'package:gestion_stock/ui/styles/colors.style.dart';
import 'package:gestion_stock/ui/widget/cart/cart.widget.dart';
import 'package:gestion_stock/ui/widget/dashboard/categorie/categorie.widget.dart';
import 'package:intl/intl.dart';

class AcceuilScreenSales extends StatefulWidget {
  const AcceuilScreenSales({super.key});

  @override
  State<AcceuilScreenSales> createState() => AcceuilScreenSalesState();
}

class AcceuilScreenSalesState extends State<AcceuilScreenSales> {
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
                child: TextField(
                  decoration: InputDecoration(
                    labelText: "Recherche",
                    labelStyle: TextStyle(color: primaryColor),
                    filled: true,
                    fillColor: secondaryColor,
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: primaryColor),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: secondaryColor),
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
              ),
              Text(
                "Liste des ventes",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
              ),
              SizedBox(
                height: screenHeight / 20,
              ),
              Expanded(
                  // child: ListView.builder(
                  //   scrollDirection: Axis.vertical,
                  //   itemBuilder: (context, index) {
                  //     return Padding(
                  //       padding: const EdgeInsets.all(8.0),
                  //       child: Card(
                  //           elevation: 1,
                  //           child: InkWell(
                  //               onTap: () {
                  //                 __ShowSalesDetailsPopup(context);
                  //               },
                  //               child: Container(
                  //                 height: 80,
                  //                 padding: EdgeInsets.all(8),
                  //                 child: Row(
                  //                   children: [
                  //                     Container(
                  //                       padding: EdgeInsets.only(right: 20),
                  //                       child: Icon(Icons.check_circle,
                  //                           color: addCoinColor, size: 50),
                  //                     ),
                  //                     Column(
                  //                       crossAxisAlignment:
                  //                           CrossAxisAlignment.start,
                  //                       children: [
                  //                         Container(
                  //                           padding: EdgeInsets.only(bottom: 20),
                  //                           child: Text(
                  //                             "Vente : #948585",
                  //                             style: TextStyle(
                  //                                 fontWeight: FontWeight.bold),
                  //                           ),
                  //                         ),
                  //                         Row(
                  //                           children: [
                  //                             Text('QTE :'),
                  //                             SizedBox(width: 30),
                  //                             Text(
                  //                               "5",
                  //                               style: TextStyle(
                  //                                   fontWeight: FontWeight.bold),
                  //                             )
                  //                           ],
                  //                         ),
                  //                       ],
                  //                     ),
                  //                     SizedBox(width: 430),
                  //                     Column(
                  //                       crossAxisAlignment:
                  //                           CrossAxisAlignment.start,
                  //                       children: [
                  //                         Padding(
                  //                           padding: EdgeInsets.only(bottom: 20),
                  //                           child: Text(
                  //                               'Date:     11/08/2023    10:00'),
                  //                         ),
                  //                         Row(
                  //                           children: [
                  //                             Text("Total:"),
                  //                             SizedBox(width: 20),
                  //                             Text(
                  //                               "2500 FCFA",
                  //                               style: TextStyle(
                  //                                   color: Colors.orange,
                  //                                   fontSize: 19,
                  //                                   fontWeight: FontWeight.bold),
                  //                             )
                  //                           ],
                  //                         )
                  //                       ],
                  //                     )
                  //                   ],
                  //                 ),
                  //               ))),
                  //     );
                  //   },
                  //   itemCount: 10,
                  // ),
                  child: Column(
                children: List.generate(listeVente.length, (index) {
                  final item = listeVente[index];
                  String formattedDate =
                      DateFormat("dd/MM/yyyy").format(item.datevente);

                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Card(
                        elevation: 1,
                        child: InkWell(
                            onTap: () {
                              __ShowSalesDetailsPopup(context, item);
                            },
                            child: Container(
                              height: 80,
                              padding: EdgeInsets.all(8),
                              child: Row(
                                children: [
                                  Container(
                                    padding: EdgeInsets.only(right: 20),
                                    child: Icon(Icons.check_circle,
                                        color: addCoinColor, size: 50),
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        padding: EdgeInsets.only(bottom: 20),
                                        child: Text(
                                          "Vente : #${item.idvente}",
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                      Row(
                                        children: [
                                          Text('QTE :'),
                                          SizedBox(width: 30),
                                          Text(
                                            " ${item.quantiteProduit}",
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold),
                                          )
                                        ],
                                      ),
                                    ],
                                  ),
                                  SizedBox(width: 430),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding: EdgeInsets.only(bottom: 20),
                                        child: Text('Date:$formattedDate'),
                                      ),
                                      Row(
                                        children: [
                                          Text("Total:"),
                                          SizedBox(width: 20),
                                          Text(
                                            "${item.prixvente} FCFA",
                                            style: TextStyle(
                                                color: Colors.orange,
                                                fontSize: 19,
                                                fontWeight: FontWeight.bold),
                                          )
                                        ],
                                      )
                                    ],
                                  )
                                ],
                              ),
                            ))),
                  );
                }),
              )),
            ],
          ),
        ),
      ],
    );
  }

  void __ShowSalesDetailsPopup(BuildContext context, Vente item) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        String formattedDate = DateFormat("dd/MM/yyyy").format(item.datevente);
        return AlertDialog(
          title: Text("Details #${item.idvente}"),
          content: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
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
                            "Vente : #${item.idvente}",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ),
                        Row(
                          children: [
                            Text('QTE :'),
                            SizedBox(width: 30),
                            Text(
                              "${item.quantiteProduit}",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                      ],
                    ),
                    SizedBox(width: 430),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(bottom: 20),
                          child: Text('Date :$formattedDate'),
                        ),
                        Row(
                          children: [
                            Text("Total:"),
                            SizedBox(width: 20),
                            Text(
                              "${item.prixvente} FCFA",
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
                    item.listeproduit.length,
                    (index) {
                      final produit = item.listeproduit[index];
                      print('- Produit: ${produit.title}');
                      print('  Prix: ${produit.price}');
                      print('Nombreelement ${produit.nombreElement}');

                      return Column(
                        children: [
                          Column(
                            children: [
                              Row(
                                children: [
                                  Container(
                                    padding: EdgeInsets.all(10),
                                    decoration: BoxDecoration(
                                      border: Border.all(
                                          width: 2, color: Colors.orange),
                                    ),
                                    child: Container(
                                      padding: EdgeInsets.all(10),
                                      width: 70, // Largeur souhaitée
                                      height: 70, // Hauteur souhaitée
                                      child: Image.asset(produit.image),
                                    ),
                                  ),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      Text(
                                        produit.title,
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Text(produit.categorie,
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold)),
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Text(
                                            "${produit.nombreElement} * ${produit.price} FCFA",
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                color: Colors.orange)),
                                      )
                                    ],
                                  ),
                                  SizedBox(width: 500),
                                  Text(
                                      " ${produit.nombreElement * produit.price} FCFA",
                                      style: TextStyle(color: Colors.orange))
                                ],
                              ),
                            ],
                          ),
                          SizedBox(height: 10), // Espace entre les images
                        ],
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
