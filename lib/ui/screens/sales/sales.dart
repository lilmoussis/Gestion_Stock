import 'package:flutter/material.dart';
import '../../widget/acceuil/acceuil.sales.dart';

class Sales extends StatefulWidget {
  const Sales({super.key});
  @override
  State<StatefulWidget> createState() {
    return _SalesState();
  }
}

class _SalesState extends State<Sales> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: Row(
      children: [
        Expanded(
          flex: 13,
          child: AcceuilScreenSales(),
        )
      ],
    )));
  }
}
