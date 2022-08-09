import 'package:flutter/material.dart';
import 'package:flutter_horoscope_guide/burc_item.dart';
import 'package:flutter_horoscope_guide/data/strings.dart';
import 'package:flutter_horoscope_guide/model/burc.dart';
import '';

class BurcListesi extends StatelessWidget {
  List<Burc> tumBurclar = [];
  BurcListesi() {
    tumBurclar = veriKaynagi();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Burclar Listesi")),
      body: Center(child: ListView.builder(itemBuilder: (context, index) {
        return BurcItem(listelenenBurc: tumBurclar[index]);
      })),
    );
  }

  List<Burc> veriKaynagi() {
    List<Burc> gecici = [];
    for (int i = 0; i < 12; i++) {
      var burcAdi = Strings.BURC_ADLARI[i];
      var burcTarihi = Strings.BURC_TARIHLERI[i];
      var burcGenelOzellik = Strings.BURC_GENEL_OZELLIKLERI[i];
      //Algoritma yeteneği geliştirmek için resimleri elde etme yöntemimiz.
      //koc1.png oluşturmak için: Koc -->koc--->koc1.png
      var kucukResim = Strings.BURC_ADLARI[i].toLowerCase() + "${i + 1}.png";
      //Büyük resim için--> Koc--> koc_buyuk1.png
      var buyukResim =
          Strings.BURC_ADLARI[i].toLowerCase() + "_buyuk" + "${i + 1}.png";
      Burc eklenecekBurc =
          Burc(burcAdi, burcTarihi, burcGenelOzellik, kucukResim, buyukResim);
      gecici.add(eklenecekBurc);
    }

    return gecici;
  }
}
