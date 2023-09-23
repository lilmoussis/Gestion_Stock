import 'package:gestion_stock/ui/models/products/products.models.dart';

class Vente {
  String idvente;
  DateTime datevente;
  List<Products> listeproduit;
  double prixvente;
  int quantiteProduit;

  Vente({
    required this.idvente,
    required this.datevente,
    required this.listeproduit,
    required this.prixvente,
    required this.quantiteProduit,
  });
}

List<Vente> listeVente = [
  // Vente(
  //   idvente: "#109083", // Utiliser un String ici
  //   datevente: DateTime.now(),
  //   listeproduit: [
  //     Products(
  //         id: 2,
  //         title: "Darci Orange",
  //         image: "assets/images/Darci brique orange.jpeg",
  //         price: 2000,
  //         categorie: "Sucreries",
  //         nombreElement: 0,
  //         devise: "Fcfa"),
  //   ],
  //   prixvente: 2500,
  // ),
];
