import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:germanonic/components/item.dart';

import '../../data/models/item_model.dart';

class PlacesScreen extends StatelessWidget {
  const PlacesScreen({super.key});
  static String id = "places_screen";
  final List<ItemModel> placesList = const [
    ItemModel(
        img: "assets/images/places/airport.png",
        deName: "Flughafen",
        enName: "Airport",
        sound: "sounds/places/Flughafen.mp3"),
    ItemModel(
        img: "assets/images/places/bakery.png",
        deName: "Bäckerei",
        enName: "Bakery",
        sound: "sounds/places/Bäckerei.mp3"),
    ItemModel(
        img: "assets/images/places/bank.png",
        deName: "Bank",
        enName: "Bank",
        sound: "sounds/places/Bank.mp3"),
    ItemModel(
        img: "assets/images/places/book-store.png",
        deName: "Buchladen",
        enName: "Book store",
        sound: "sounds/places/Buchladen.mp3"),
    ItemModel(
        img: "assets/images/places/cafe.png",
        deName: "Cafe",
        enName: "Cafe",
        sound: "sounds/places/Cafe.mp3"),
    ItemModel(
        img: "assets/images/places/church.png",
        deName: "Kirche",
        enName: "Church",
        sound: "sounds/places/Kirche.mp3"),
    ItemModel(
        img: "assets/images/places/cinema.png",
        deName: "Kino",
        enName: "Cinema",
        sound: "sounds/places/Kino.mp3"),
    ItemModel(
        img: "assets/images/places/clinic.png",
        deName: "Klinik",
        enName: "Clinic",
        sound: "sounds/places/Klinik.mp3"),
    ItemModel(
        img: "assets/images/places/clothing-store.png",
        deName: "Bekleidungsgeschäft",
        enName: "Clothing store",
        sound: "sounds/places/Bekleidungsgeschäft.mp3"),
    ItemModel(
        img: "assets/images/places/factory.png",
        deName: "Fabrik",
        enName: "Factory",
        sound: "sounds/places/Fabrik.mp3"),
    ItemModel(
        img: "assets/images/places/fire-station.png",
        deName: "Feuerwehr",
        enName: "Fire station",
        sound: "sounds/places/Feuerwehr.mp3"),
    ItemModel(
        img: "assets/images/places/gas-station.png",
        deName: "Tankstelle",
        enName: "Gas station",
        sound: "sounds/places/Tankstelle.mp3"),
    ItemModel(
        img: "assets/images/places/hospital.png",
        deName: "Krankenhaus",
        enName: "Hospital",
        sound: "sounds/places/Krankenhaus.mp3"),
    ItemModel(
        img: "assets/images/places/hotel.png",
        deName: "Hotel",
        enName: "Hotel",
        sound: "sounds/places/Hotel.mp3"),
    ItemModel(
        img: "assets/images/places/library.png",
        deName: "Bibliothek",
        enName: "Library",
        sound: "sounds/places/Bibliothek.mp3"),
    ItemModel(
        img: "assets/images/places/mosque.png",
        deName: "Moschee",
        enName: "Mosque",
        sound: "sounds/places/Moschee.mp3"),
    ItemModel(
        img: "assets/images/places/museum.png",
        deName: "Museum",
        enName: "Museum",
        sound: "sounds/places/Museum.mp3"),
    ItemModel(
        img: "assets/images/places/pharmacy.png",
        deName: "Apotheke",
        enName: "Pharmacy",
        sound: "sounds/places/Apotheke.mp3"),
    ItemModel(
        img: "assets/images/places/police-station.png",
        deName: "Polizeistation",
        enName: "Police station",
        sound: "sounds/places/Polizeistation.mp3"),
    ItemModel(
        img: "assets/images/places/post-office.png",
        deName: "Postamt",
        enName: "Post office",
        sound: "sounds/places/Postamt.mp3"),
    ItemModel(
        img: "assets/images/places/restaurant.png",
        deName: "Restaurant",
        enName: "Restaurant",
        sound: "sounds/places/Restaurant.mp3"),
    ItemModel(
        img: "assets/images/places/school.png",
        deName: "Schule",
        enName: "School",
        sound: "sounds/places/Schule.mp3"),
    ItemModel(
        img: "assets/images/places/stadium.png",
        deName: "Stadion",
        enName: "Stadium",
        sound: "sounds/places/Stadion.mp3"),
    ItemModel(
        img: "assets/images/places/supermarket.png",
        deName: "Supermarkt",
        enName: "Supermarket",
        sound: "sounds/places/Supermarkt.mp3"),
    ItemModel(
        img: "assets/images/places/swimming-pool.png",
        deName: "Schwimmbad",
        enName: "Swimming pool",
        sound: "sounds/places/Schwimmbad.mp3"),
    ItemModel(
        img: "assets/images/places/theater.png",
        deName: "Theater",
        enName: "Theater",
        sound: "sounds/places/Theater.mp3"),
    ItemModel(
        img: "assets/images/places/train-station.png",
        deName: "Bahnhof",
        enName: "Train station",
        sound: "sounds/places/Bahnhof.mp3"),
    ItemModel(
        img: "assets/images/places/zoo.png",
        deName: "Zoo",
        enName: "Zoo",
        sound: "sounds/places/Zoo.mp3"),
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
          "Places",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: ListView.builder(
        physics: const BouncingScrollPhysics(),
        itemCount: placesList.length,
        itemBuilder: (context, index) {
          return Column(
            children: [
              SizedBox(
                height: 7.h,
              ),
              Item(
                item: placesList[index],
              ),
            ],
          );
        },
      ),
    );
  }
}
