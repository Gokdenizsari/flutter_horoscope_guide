import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_horoscope_guide/model/burc.dart';

class BurcItem extends StatelessWidget {
  final Burc listelenenBurc;
  const BurcItem({required this.listelenenBurc, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var myTextStyle = Theme.of(context).textTheme;
    return Container(
      color:Color.fromARGB(Random().nextInt(255), Random().nextInt(255), Random().nextInt(255), Random().nextInt(255)),
      child: ListTile(
        leading: Image.asset("images/" + listelenenBurc.kucukResim),
        title: Text(listelenenBurc.burcAdi,style: myTextStyle.headline5,),
        subtitle: Text(listelenenBurc.burcTarihi,style: myTextStyle.subtitle1,),
        trailing: Icon(Icons.arrow_back_ios_new, color: Colors.red),
      ),
    );
  }
}
