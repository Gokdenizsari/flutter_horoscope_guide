import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter_horoscope_guide/model/burc.dart';

class BurcDetay extends StatelessWidget {
  final Burc tiklanilanBurc;
  const BurcDetay({required this.tiklanilanBurc, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: CustomScrollView(
      slivers: [
        SliverAppBar(
          expandedHeight: 245,
          pinned: false,
          title: Text(tiklanilanBurc.burcAdi),
          backgroundColor: Colors.pink,
          flexibleSpace: FlexibleSpaceBar(
              background: Image.asset("images/" + tiklanilanBurc.buyukResim)),
        ),
        SliverToBoxAdapter(
          child: SingleChildScrollView(
            child: Text(
              tiklanilanBurc.burcDetayi,
              style: Theme.of(context).textTheme.subtitle1,
            ),
          ),
        )
      ],
    ));
  }
}
