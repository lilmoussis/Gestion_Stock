import 'package:flutter/material.dart';
import '../../widget/acceuil/acceuil.report.dart';
import '../../widget/acceuil/acceuil.sales.dart';

class Report extends StatefulWidget {
  const Report({super.key});
  @override
  State<StatefulWidget> createState() {
    return _ReportState();
  }
}

class _ReportState extends State<Report> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: Row(
      children: [
        Expanded(
          flex: 13,
          child: AcceuilReport(),
        )
      ],
    )));
  }
}
