// ignore_for_file: unused_local_variable, prefer_const_constructors, prefer_const_literals_to_create_immutables, unused_element, sized_box_for_whitespace, avoid_unnecessary_containers, no_leading_underscores_for_local_identifiers, unnecessary_brace_in_string_interps

import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:gestion_stock/ui/models/products/products.models.dart';
import 'package:gestion_stock/ui/models/ventes/ventes.models.dart';
import 'package:gestion_stock/ui/styles/colors.style.dart';
import 'package:gestion_stock/utils/function.utils.dart';
import 'package:art_sweetalert/art_sweetalert.dart';

class CartWidget extends StatefulWidget {
  const CartWidget({super.key});

  @override
  State<CartWidget> createState() => _CartWidgetState();
}

class _CartWidgetState extends State<CartWidget> {
  String randomReference = generateRandomReference();
  int totalPanier = 0;
  double totalAmount = 0;
  late List produitPanier;
  @override
  Widget build(BuildContext context) {
    _getTotalNumberOfProducts();
    _calculateTotal();
    var screenSize = MediaQuery.of(context).size;

    // Récupérer la largeur de l'écran
    double screenWidth = screenSize.width;

    // Récupérer la hauteur de l'écran
    double screenHeight = screenSize.height;
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Container(
        decoration: BoxDecoration(
          color: secondaryColor,
          borderRadius: BorderRadius.circular(10),
        ),
        width: double.infinity,
        height: screenHeight,
        child: Column(
          children: [
            Container(
              alignment: Alignment.topLeft,
              child: Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 15,
                  vertical: 16,
                ),
                child: Text(
                  'Votre commande',
                ),
              ),
            ),
            Container(
              alignment: Alignment.topLeft,
              child: Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 15,
                ),
                child: Text(
                  '#${randomReference}',
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            // SizedBox(
            //   height: screenHeight / 80,
            // ),
            Expanded(
              child: ListView.builder(
                itemCount: panierProduit.length,
                itemBuilder: (BuildContext context, int index) {
                  final item = panierProduit[index];
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Container(
                          height: screenHeight / 6,
                          // color: primaryColor,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Container(
                                height: screenHeight / 8,
                                // width: 150,
                                decoration: BoxDecoration(
                                  color: secondaryColor,
                                  borderRadius: BorderRadius.circular(20),
                                  border: Border.all(
                                    color: colorNumber,
                                  ),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Image.asset(
                                    item.image,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              Column(
                                // crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  SizedBox(
                                    height: screenHeight / 45,
                                  ),
                                  Container(
                                    // height: screenHeight / 45,
                                    // color: primaryColor,
                                    width: screenWidth / 20,
                                    alignment: Alignment.topLeft,
                                    child: Tooltip(
                                      message: item.title,
                                      child: Text(
                                        item.title,
                                        overflow: TextOverflow.ellipsis,
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          // color: secondaryColor,
                                          color: primaryColor,
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Container(
                                    // color: secondaryColor,
                                    alignment: Alignment.topLeft,
                                    child: Text(
                                      item.categorie,
                                      style: TextStyle(
                                        // color: secondaryColor,
                                        color: darkColor,
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 11,
                                  ),
                                  Container(
                                    // color: secondaryColor,
                                    // alignment: Alignment.topRight,
                                    child: Text(
                                      '${item.price}',
                                      style: TextStyle(
                                        // color: secondaryColor,
                                        color: primaryColor,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Container(
                                // color: secondaryColor,
                                alignment: Alignment.topRight,
                                // ),
                                child: IconButton(
                                  onPressed: () {
                                    _removeProductPanier(item);
                                  },
                                  icon: Icon(
                                    Icons.close,
                                    color: redColor,
                                    size: 30,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          // color: primaryColor,
                          // alignment: Alignment.bottomRight,
                          // width: screenWidth / 20,
                          // height: screenHeight / 20,
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  IconButton(
                                    onPressed: () {
                                      _removenombreProduct(item);
                                    },
                                    icon: Icon(
                                      Icons.remove_circle,
                                      color: darkColor,
                                      size: 30,
                                    ),
                                  ),
                                  Text(
                                    '${item.nombreElement}',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  IconButton(
                                    onPressed: () {
                                      _addNombreProduct(item);
                                    },
                                    icon: Icon(
                                      Icons.add_box_sharp,
                                      color: darkColor,
                                      size: 30,
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 10,
                              ),
                            ],
                          ),
                        ),
                        Container(
                          height: 1,
                          color: primaryColor,
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),

            Container(
              height: screenHeight / 5,
              color: secondaryColor,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Nombre"),
                        Text("${totalPanier}"),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Total"),
                        Text(
                          "${totalAmount.toStringAsFixed(2)} FCFA",
                          style: TextStyle(
                              color: colorNumber, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      if (panierProduit.isEmpty || totalAmount <= 0) {
                        return showSnackbar(
                          title: 'Erreur',
                          message: 'Le panier ne peut pas être vide !🤷‍♂️',
                          backgroundcolor: pageBackgroundColor,
                        );
                      }
                      _ValideCommandeshowAlert();
                    },
                    style: ButtonStyle(
                      backgroundColor: MaterialStateColor.resolveWith(
                          (states) => primaryColor),
                    ),
                    child: Text('Valider commande'),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _removeProductPanier(Products item) {
    setState(() {
      item.nombreElement = 0;
      panierProduit.remove(item);
    });
  }

  void _addNombreProduct(Products item) {
    setState(() {
      item.nombreElement++;
      _calculateTotal();
    });
  }

  void _removenombreProduct(Products item) {
    setState(() {
      if (item.nombreElement > 1) {
        item.nombreElement--;
        _calculateTotal();
      } else {
        showSnackbar(
          title: 'Erreur',
          message:
              'Le panier ne peut pas comporter de produit avec pour nombre 0',
          backgroundcolor: pageBackgroundColor,
        );
      }
    });
  }

  void _calculateTotal() {
    totalAmount = 0;
    for (var item in panierProduit) {
      totalAmount += item.price * item.nombreElement;
    }
  }

  void _ValideCommandeshowAlert() {
    ArtDialogArgs dialogArgs = ArtDialogArgs(
      type: ArtSweetAlertType.success,
      title: "Vente N°${randomReference}",
      text: "Commande validée avec succès 😇",
    );
    showCustomSweetAlert(context, dialogArgs);

    setState(() {
      produitPanier = [...panierProduit];
      _AddListeVente(randomReference, totalAmount, totalPanier);

      for (var item in panierProduit) {
        item.nombreElement = 0;
      }
      panierProduit = [];
      panierProduit.removeWhere((item) => item.nombreElement > 0);

      randomReference = generateRandomReference();
    });
  }

  _getTotalNumberOfProducts() {
    totalPanier = panierProduit.fold(0, (int sum, Products item) {
      return sum + item.nombreElement;
    });
  }
}

void _AddListeVente(
    String randrandomReference, double totalAmount, int totalPanier) {
  Vente vente = Vente(
    idvente: randrandomReference,
    datevente: DateTime.now(),
    prixvente: totalAmount,
    listeproduit: panierProduit,
    quantiteProduit: totalPanier,
  );
  listeVente.add(vente);
  for (var vente in listeVente) {
    print('ID Vente: ${vente.idvente}');
    print('Date Vente: ${vente.datevente}');
    print('Prix Vente: ${vente.prixvente}');
    print('Liste Produit:');
    for (var produit in vente.listeproduit) {
      print('- Produit: ${produit.title}');
      print('  Prix: ${produit.price}');
      print('Nombreelement ${produit.nombreElement}');
    }
  }
}
