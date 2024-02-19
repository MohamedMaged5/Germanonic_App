import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:germanonic/components/item.dart';

import '../../data/models/item_model.dart';

class BodyPartsScreen extends StatelessWidget {
  const BodyPartsScreen({super.key});
  static String id = "body_parts_screen";
  final List<ItemModel> bodyPartsList = const [
    ItemModel(
        img: "assets/images/body parts/arm.png",
        deName: "Arm",
        enName: "Arm",
        sound: "sounds/body parts/Arm.mp3"),
    ItemModel(
        img: "assets/images/body parts/belly.png",
        deName: "Bauch",
        enName: "Belly",
        sound: "sounds/body parts/Bauch.mp3"),
    ItemModel(
        img: "assets/images/body parts/chest.png",
        deName: "Brust",
        enName: "Chest",
        sound: "sounds/body parts/Brust.mp3"),
    ItemModel(
        img: "assets/images/body parts/chin.png",
        deName: "Kinn",
        enName: "Chin",
        sound: "sounds/body parts/kinn.mp3"),
    ItemModel(
        img: "assets/images/body parts/ear.png",
        deName: "Ohr",
        enName: "Ear",
        sound: "sounds/body parts/Ohr.mp3"),
    ItemModel(
        img: "assets/images/body parts/elbow.png",
        deName: "Ellbogen",
        enName: "Elbow",
        sound: "sounds/body parts/Ellbogen.mp3"),
    ItemModel(
        img: "assets/images/body parts/eye.png",
        deName: "Auge",
        enName: "Eye",
        sound: "sounds/body parts/Auge.mp3"),
    ItemModel(
        img: "assets/images/body parts/eyebrow.png",
        deName: "Augenbraue",
        enName: "Eyebrow",
        sound: "sounds/body parts/Augenbraue.mp3"),
    ItemModel(
        img: "assets/images/body parts/face.png",
        deName: "Gesicht",
        enName: "Face",
        sound: "sounds/body parts/Gesicht.mp3"),
    ItemModel(
        img: "assets/images/body parts/finger.png",
        deName: "Finger",
        enName: "Finger",
        sound: "sounds/body parts/Finger.mp3"),
    ItemModel(
        img: "assets/images/body parts/foot.png",
        deName: "Fuß",
        enName: "Foot",
        sound: "sounds/body parts/Fuß.mp3"),
    ItemModel(
        img: "assets/images/body parts/hair.png",
        deName: "Haar",
        enName: "Hair",
        sound: "sounds/body parts/Haar.mp3"),
    ItemModel(
        img: "assets/images/body parts/jaw.png",
        deName: "Kiefer",
        enName: "Jaw",
        sound: "sounds/body parts/Kiefer.mp3"),
    ItemModel(
        img: "assets/images/body parts/knee.png",
        deName: "Knie",
        enName: "Knee",
        sound: "sounds/body parts/Knie.mp3"),
    ItemModel(
        img: "assets/images/body parts/leg.png",
        deName: "Bein",
        enName: "Leg",
        sound: "sounds/body parts/Bein.mp3"),
    ItemModel(
        img: "assets/images/body parts/mouth.png",
        deName: "Mund",
        enName: "Mouth",
        sound: "sounds/body parts/Mund.mp3"),
    ItemModel(
        img: "assets/images/body parts/neck.png",
        deName: "Nacken",
        enName: "Neck",
        sound: "sounds/body parts/Nacken.mp3"),
    ItemModel(
        img: "assets/images/body parts/nose.png",
        deName: "Nase",
        enName: "Nose",
        sound: "sounds/body parts/Nase.mp3"),
    ItemModel(
        img: "assets/images/body parts/shoulder.png",
        deName: "Schulter",
        enName: "Shoulder",
        sound: "sounds/body parts/Schulter.mp3"),
    ItemModel(
        img: "assets/images/body parts/tongue.png",
        deName: "Zunge",
        enName: "Tonque",
        sound: "sounds/body parts/Zunge.mp3"),
    ItemModel(
        img: "assets/images/body parts/wrist.png",
        deName: "Handgelenk",
        enName: "Wrist",
        sound: "sounds/body parts/Handgelenk.mp3"),
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
          "Body Parts",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: ListView.builder(
        physics: const BouncingScrollPhysics(),
        itemCount: bodyPartsList.length,
        itemBuilder: (context, index) {
          return Column(
            children: [
              SizedBox(
                height: 7.h,
              ),
              Item(
                item: bodyPartsList[index],
              ),
            ],
          );
        },
      ),
    );
  }
}
