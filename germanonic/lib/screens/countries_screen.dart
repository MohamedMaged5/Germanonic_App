import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:germanonic/components/item.dart';

import '../../data/models/item_model.dart';

class CountriesScreen extends StatelessWidget {
  const CountriesScreen({super.key});
  static String id = "countries_screen";
  final List<ItemModel> countriesList = const [
    ItemModel(
        img: "assets/images/countries/algeria.png",
        deName: "Algerien",
        enName: "Algeria",
        sound: "sounds/countries/Algerien.mp3"),
    ItemModel(
        img: "assets/images/countries/argentina.png",
        deName: "Argentinien",
        enName: "Argentina",
        sound: "sounds/countries/Argentinien.mp3"),
    ItemModel(
        img: "assets/images/countries/australia.png",
        deName: "Australien",
        enName: "Australia",
        sound: "sounds/countries/Australien.mp3"),
    ItemModel(
        img: "assets/images/countries/austria.png",
        deName: "Österreich",
        enName: "Austria",
        sound: "sounds/countries/Österreich.mp3"),
    ItemModel(
        img: "assets/images/countries/bahrain.png",
        deName: "Bahrain",
        enName: "Bahrain",
        sound: "sounds/countries/Bahrain.mp3"),
    ItemModel(
        img: "assets/images/countries/belgium.png",
        deName: "Belgien",
        enName: "Belgium",
        sound: "sounds/countries/Belgien.mp3"),
    ItemModel(
        img: "assets/images/countries/cameroon.png",
        deName: "Kamerun",
        enName: "Cameroon",
        sound: "sounds/countries/Kamerun.mp3"),
    ItemModel(
        img: "assets/images/countries/canada.png",
        deName: "Kanada",
        enName: "Canada",
        sound: "sounds/countries/Kanada.mp3"),
    ItemModel(
        img: "assets/images/countries/chile.png",
        deName: "Chile",
        enName: "Chile",
        sound: "sounds/countries/Chile.mp3"),
    ItemModel(
        img: "assets/images/countries/china.png",
        deName: "China",
        enName: "China",
        sound: "sounds/countries/China.mp3"),
    ItemModel(
        img: "assets/images/countries/colombia.png",
        deName: "Kolumbien",
        enName: "Colombia",
        sound: "sounds/countries/Kolumbien.mp3"),
    ItemModel(
        img: "assets/images/countries/czech-republic.png",
        deName: "Tschechien",
        enName: "Czech Republic",
        sound: "sounds/countries/Tschechien.mp3"),
    ItemModel(
        img: "assets/images/countries/denmark.png",
        deName: "Dänemark",
        enName: "Denmark",
        sound: "sounds/countries/Dänemark.mp3"),
    ItemModel(
        img: "assets/images/countries/egypt.png",
        deName: "Ägypten",
        enName: "Egypt",
        sound: "sounds/countries/Ägypten.mp3"),
    ItemModel(
        img: "assets/images/countries/england.png",
        deName: "England",
        enName: "England",
        sound: "sounds/countries/England.mp3"),
    ItemModel(
        img: "assets/images/countries/france.png",
        deName: "Frankreich",
        enName: "France",
        sound: "sounds/countries/Frankreich.mp3"),
    ItemModel(
        img: "assets/images/countries/germany.png",
        deName: "Deutschland",
        enName: "Germany",
        sound: "sounds/countries/Deutschland.mp3"),
    ItemModel(
        img: "assets/images/countries/ghana.png",
        deName: "Ghana",
        enName: "Ghana",
        sound: "sounds/countries/Ghana.mp3"),
    ItemModel(
        img: "assets/images/countries/greece.png",
        deName: "Griechenland",
        enName: "Greece",
        sound: "sounds/countries/Griechenland.mp3"),
    ItemModel(
        img: "assets/images/countries/hungary.png",
        deName: "Ungarn",
        enName: "Hungary",
        sound: "sounds/countries/Ungarn.mp3"),
    ItemModel(
        img: "assets/images/countries/iceland.png",
        deName: "Island",
        enName: "Iceland",
        sound: "sounds/countries/Island.mp3"),
    ItemModel(
        img: "assets/images/countries/india.png",
        deName: "Indien",
        enName: "India",
        sound: "sounds/countries/Indien.mp3"),
    ItemModel(
        img: "assets/images/countries/italy.png",
        deName: "Italien",
        enName: "Italy",
        sound: "sounds/countries/Italien.mp3"),
    ItemModel(
        img: "assets/images/countries/japan.png",
        deName: "Japan",
        enName: "Japan",
        sound: "sounds/countries/Japan.mp3"),
    ItemModel(
        img: "assets/images/countries/kuwait.png",
        deName: "Kuwait",
        enName: "Kuwait",
        sound: "sounds/countries/Kuwait.mp3"),
    ItemModel(
        img: "assets/images/countries/libya.png",
        deName: "Libyen",
        enName: "Libya",
        sound: "sounds/countries/Libyen.mp3"),
    ItemModel(
        img: "assets/images/countries/mauritania.png",
        deName: "Mauretanien",
        enName: "Mauritania",
        sound: "sounds/countries/Mauretanien.mp3"),
    ItemModel(
        img: "assets/images/countries/netherlands.png",
        deName: "Niederlande",
        enName: "Netherlands",
        sound: "sounds/countries/Niederlande.mp3"),
    ItemModel(
        img: "assets/images/countries/nigeria.png",
        deName: "Nigeria",
        enName: "Nigeria",
        sound: "sounds/countries/Nigeria.mp3"),
    ItemModel(
        img: "assets/images/countries/palestine.png",
        deName: "Palästina",
        enName: "Palestine",
        sound: "sounds/countries/Palästina.mp3"),
    ItemModel(
        img: "assets/images/countries/peru.png",
        deName: "Peru",
        enName: "Peru",
        sound: "sounds/countries/Peru.mp3"),
    ItemModel(
        img: "assets/images/countries/poland.png",
        deName: "Polen",
        enName: "Poland",
        sound: "sounds/countries/Polen.mp3"),
    ItemModel(
        img: "assets/images/countries/qatar.png",
        deName: "Katar",
        enName: "Qatar",
        sound: "sounds/countries/Katar.mp3"),
    ItemModel(
        img: "assets/images/countries/romania.png",
        deName: "Rumänien",
        enName: "Romania",
        sound: "sounds/countries/Rumänien.mp3"),
    ItemModel(
        img: "assets/images/countries/russia.png",
        deName: "Russland",
        enName: "Russia",
        sound: "sounds/countries/Russland.mp3"),
    ItemModel(
        img: "assets/images/countries/senegal.png",
        deName: "Senegal",
        enName: "Senegal",
        sound: "sounds/countries/Senegal.mp3"),
    ItemModel(
        img: "assets/images/countries/spain.png",
        deName: "Spanien",
        enName: "Spain",
        sound: "sounds/countries/Spanien.mp3"),
    ItemModel(
        img: "assets/images/countries/sudan.png",
        deName: "Sudan",
        enName: "Sudan",
        sound: "sounds/countries/Sudan.mp3"),
    ItemModel(
        img: "assets/images/countries/sweden.png",
        deName: "Schweden",
        enName: "Sweden",
        sound: "sounds/countries/Schweden.mp3"),
    ItemModel(
        img: "assets/images/countries/switzerland.png",
        deName: "Schweiz",
        enName: "Switzerland",
        sound: "sounds/countries/Schweiz.mp3"),
    ItemModel(
        img: "assets/images/countries/syria.png",
        deName: "Syrien",
        enName: "Syria",
        sound: "sounds/countries/Syrien.mp3"),
    ItemModel(
        img: "assets/images/countries/thailand.png",
        deName: "Thailand",
        enName: "Thailand",
        sound: "sounds/countries/Thailand.mp3"),
    ItemModel(
        img: "assets/images/countries/turkey.png",
        deName: "Türkei",
        enName: "Turkey",
        sound: "sounds/countries/Türkei.mp3"),
    ItemModel(
        img: "assets/images/countries/ukraine.png",
        deName: "Ukraine",
        enName: "Ukraine",
        sound: "sounds/countries/Ukraine.mp3"),
    ItemModel(
        img: "assets/images/countries/united-arab-emirates.png",
        deName: "Vereinigte Arabische Emirate",
        enName: "United Arab Emirates",
        sound: "sounds/countries/Vereinigte Arabische Emirate.mp3"),
    ItemModel(
        img: "assets/images/countries/united-states.png",
        deName: "Vereinigte Staaten",
        enName: "United States",
        sound: "sounds/countries/Vereinigte Staaten.mp3"),
    ItemModel(
        img: "assets/images/countries/yemen.png",
        deName: "Jemen",
        enName: "Yemen",
        sound: "sounds/countries/Jemen.mp3"),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        leading: const BackButton(
          color: Colors.white,
        ),
        centerTitle: true,
        backgroundColor: const Color(0xFF1D1C21),
        title: const Text(
          "Counrties",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: ListView.builder(
        physics: const BouncingScrollPhysics(),
        itemCount: countriesList.length,
        itemBuilder: (context, index) {
          return Column(
            children: [
              SizedBox(
                height: 7.h,
              ),
              Item(
                item: countriesList[index],
              ),
            ],
          );
        },
      ),
    );
  }
}
