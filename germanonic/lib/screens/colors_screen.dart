import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:germanonic/components/item.dart';

import '../../data/models/item_model.dart';

class ColorsScreen extends StatelessWidget {
  const ColorsScreen({super.key});
  static String id = "colors_screen";
  final List<ItemModel> colorsList = const [
    ItemModel(
        img: "assets/images/colors/color_black.png",
        deName: "Schwarz",
        enName: "Black",
        sound: "sounds/colors/Schwarz.mp3"),
    ItemModel(
        img: "assets/images/colors/color_white.png",
        deName: "Weiß",
        enName: "White",
        sound: "sounds/colors/Weiß.mp3"),
    ItemModel(
        img: "assets/images/colors/color_brown.png",
        deName: "Braun",
        enName: "Brown",
        sound: "sounds/colors/Braun.mp3"),
    ItemModel(
        img: "assets/images/colors/color_gray.png",
        deName: "Grau",
        enName: "Gray",
        sound: "sounds/colors/Grau.mp3"),
    ItemModel(
        img: "assets/images/colors/color_green.png",
        deName: "Grün",
        enName: "Green",
        sound: "sounds/colors/Grün.mp3"),
    ItemModel(
        img: "assets/images/colors/color_red.png",
        deName: "Rot",
        enName: "Red",
        sound: "sounds/colors/Rot.mp3"),
    ItemModel(
        img: "assets/images/colors/orange.png",
        deName: "Orange",
        enName: "Orange",
        sound: "sounds/colors/Orange.mp3"),
    ItemModel(
        img: "assets/images/colors/yellow.png",
        deName: "Gelb",
        enName: "Yellow",
        sound: "sounds/colors/Gelb.mp3"),
    ItemModel(
        img: "assets/images/colors/blue.png",
        deName: "Blau",
        enName: "Blue",
        sound: "sounds/colors/Blau.mp3"),
    ItemModel(
        img: "assets/images/colors/purple.png",
        deName: "Lila",
        enName: "Purple",
        sound: "sounds/colors/Lila.mp3"),
    ItemModel(
        img: "assets/images/colors/pink.png",
        deName: "Rosa",
        enName: "Pink",
        sound: "sounds/colors/Rosa.mp3"),
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
          "Colors",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: ListView.builder(
        physics: const BouncingScrollPhysics(),
        itemCount: colorsList.length,
        itemBuilder: (context, index) {
          return Column(
            children: [
              SizedBox(
                height: 7.h,
              ),
              Item(
                item: colorsList[index],
              ),
            ],
          );
        },
      ),
    );
  }
}
