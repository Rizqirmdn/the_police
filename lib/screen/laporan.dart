import 'package:flutter/material.dart';
import 'package:the_police/widget/laporan_card.dart';

class Laporan extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: 10,
        itemBuilder: (context, index) {
          return LaporanCard();
        },
      ),
    );
  }
}
