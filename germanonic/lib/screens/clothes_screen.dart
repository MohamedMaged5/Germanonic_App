import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:germanonic/components/item.dart';

import '../../data/models/item_model.dart';

class ClothesScreen extends StatelessWidget {
  const ClothesScreen({super.key});
  static String id = "clothes_screen";
  final List<ItemModel> clothesList = const [
    ItemModel(
        img: "assets/images/clothes/bag.png",
        deName: "Tasche",
        enName: "Bag",
        sound: "sounds/clothes/Tasche.mp3"),
    ItemModel(
        img: "assets/images/clothes/belt.png",
        deName: "Gürtel",
        enName: "Belt",
        sound: "sounds/clothes/Gürtel.mp3"),
    ItemModel(
        img: "assets/images/clothes/blazer.png",
        deName: "Blazer",
        enName: "Blazer",
        sound: "sounds/clothes/Blazer.mp3"),
    ItemModel(
        img: "assets/images/clothes/blouse.png",
        deName: "Bluse",
        enName: "Blouse",
        sound: "sounds/clothes/Bluse.mp3"),
    ItemModel(
        img: "assets/images/clothes/boots.png",
        deName: "Stiefel",
        enName: "Boots",
        sound: "sounds/clothes/Stiefel.mp3"),
    ItemModel(
        img: "assets/images/clothes/bowtie.png",
        deName: "Krawatte",
        enName: "Bowtie",
        sound: "sounds/clothes/Krawatte.mp3"),
    ItemModel(
        img: "assets/images/clothes/cap.png",
        deName: "Kappe",
        enName: "Cap",
        sound: "sounds/clothes/Kappe.mp3"),
    ItemModel(
        img: "assets/images/clothes/dress.png",
        deName: "Kleid",
        enName: "Dress",
        sound: "sounds/clothes/Kleid.mp3"),
    ItemModel(
        img: "assets/images/clothes/gloves.png",
        deName: "Handschuhe",
        enName: "Gloves",
        sound: "sounds/clothes/Handschuhe.mp3"),
    ItemModel(
        img: "assets/images/clothes/hat.png",
        deName: "Hut",
        enName: "Hat",
        sound: "sounds/clothes/Hut.mp3"),
    ItemModel(
        img: "assets/images/clothes/high-heels-shoe.png",
        deName: "High-Heels-Schuh",
        enName: "high heels shoe",
        sound: "sounds/clothes/High-Heels-Schuh.mp3"),
    ItemModel(
        img: "assets/images/clothes/hoodie.png",
        deName: "Kapuzenpullover",
        enName: "Hoodie",
        sound: "sounds/clothes/Kapuzenpullover.mp3"),
    ItemModel(
        img: "assets/images/clothes/jacket.png",
        deName: "Jacke",
        enName: "Jacket",
        sound: "sounds/clothes/Jacke.mp3"),
    ItemModel(
        img: "assets/images/clothes/scarf.png",
        deName: "Schal",
        enName: "Scarf",
        sound: "sounds/clothes/Schal.mp3"),
    ItemModel(
        img: "assets/images/clothes/shoes.png",
        deName: "Schuhe",
        enName: "Shoes",
        sound: "sounds/clothes/Schuhe.mp3"),
    ItemModel(
        img: "assets/images/clothes/shorts.png",
        deName: "Kurze Hose",
        enName: "Shorts",
        sound: "sounds/clothes/kurze Hose.mp3"),
    ItemModel(
        img: "assets/images/clothes/skirt.png",
        deName: "Rock",
        enName: "Skirt",
        sound: "sounds/clothes/Rock.mp3"),
    ItemModel(
        img: "assets/images/clothes/slippers.png",
        deName: "Hausschuhe",
        enName: "Slippers",
        sound: "sounds/clothes/Hausschuhe.mp3"),
    ItemModel(
        img: "assets/images/clothes/sneakers.png",
        deName: "Turnschuhe",
        enName: "Sneakers",
        sound: "sounds/clothes/Turnschuhe.mp3"),
    ItemModel(
        img: "assets/images/clothes/suit.png",
        deName: "Anzug",
        enName: "Suit",
        sound: "sounds/clothes/Anzug.mp3"),
    ItemModel(
        img: "assets/images/clothes/sweater.png",
        deName: "Pullover",
        enName: "Sweater",
        sound: "sounds/clothes/Pullover.mp3"),
    ItemModel(
        img: "assets/images/clothes/t-shirt.png",
        deName: "T-Shirt",
        enName: "T-Shirt",
        sound: "sounds/clothes/T-Shirt.mp3"),
    ItemModel(
        img: "assets/images/clothes/tie.png",
        deName: "Binden",
        enName: "Tie",
        sound: "sounds/clothes/binden.mp3"),
    ItemModel(
        img: "assets/images/clothes/trousers.png",
        deName: "Hose",
        enName: "Trousers",
        sound: "sounds/clothes/Hose.mp3"),
    ItemModel(
        img: "assets/images/clothes/vest.png",
        deName: "Weste",
        enName: "Vest",
        sound: "sounds/clothes/Weste.mp3"),
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
          "Clothes",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: ListView.builder(
        physics: const BouncingScrollPhysics(),
        itemCount: clothesList.length,
        itemBuilder: (context, index) {
          return Column(
            children: [
              SizedBox(
                height: 7.h,
              ),
              Item(
                item: clothesList[index],
              ),
            ],
          );
        },
      ),
    );
  }
}
