import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:germanonic/components/item.dart';

import '../../data/models/item_model.dart';

class FamilyMembersScreen extends StatelessWidget {
  const FamilyMembersScreen({super.key});
  static String id = "family_members_screen";
  final List<ItemModel> familyMembersList = const [
    ItemModel(
        img: "assets/images/family_members/family_grandfather.png",
        deName: "Großvater",
        enName: "Grandfather",
        sound: "sounds/family_members/Großvater.mp3"),
    ItemModel(
        img: "assets/images/family_members/family_grandmother.png",
        deName: "Oma",
        enName: "Grandmother",
        sound: "sounds/family_members/Oma.mp3"),
    ItemModel(
        img: "assets/images/family_members/family_father.png",
        deName: "Vater",
        enName: "Father",
        sound: "sounds/family_members/Vater.mp3"),
    ItemModel(
        img: "assets/images/family_members/family_mother.png",
        deName: "Mutter",
        enName: "Mother",
        sound: "sounds/family_members/Mutter.mp3"),
    ItemModel(
        img: "assets/images/family_members/family_son.png",
        deName: "Sohn",
        enName: "Son",
        sound: "sounds/family_members/Sohn.mp3"),
    ItemModel(
        img: "assets/images/family_members/family_daughter.png",
        deName: "Tochter",
        enName: "Daughter",
        sound: "sounds/family_members/Tochter.mp3"),
    ItemModel(
        img: "assets/images/family_members/family_older_brother.png",
        deName: "Älterer Bruder",
        enName: "Older brother",
        sound: "sounds/family_members/Älterer Bruder.mp3"),
    ItemModel(
        img: "assets/images/family_members/family_younger_brother.png",
        deName: "Jüngerer Bruder",
        enName: "Younger brother",
        sound: "sounds/family_members/Jüngerer Bruder.mp3"),
    ItemModel(
        img: "assets/images/family_members/family_older_sister.png",
        deName: "Ältere Schwester",
        enName: "Older sister",
        sound: "sounds/family_members/Ältere Schwester.mp3"),
    ItemModel(
        img: "assets/images/family_members/family_younger_sister.png",
        deName: "Jüngere Schwester",
        enName: "Younger sister",
        sound: "sounds/family_members/Jüngere Schwester.mp3"),
    ItemModel(
        img: "assets/images/family_members/aunt.png",
        deName: "Tante",
        enName: "Aunt",
        sound: "sounds/family_members/Tante.mp3"),
    ItemModel(
        img: "assets/images/family_members/Uncle.png",
        deName: "Onkel",
        enName: "Uncle",
        sound: "sounds/family_members/Onkel.mp3"),
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
          "Family Members",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: ListView.builder(
        physics: const BouncingScrollPhysics(),
        itemCount: familyMembersList.length,
        itemBuilder: (context, index) {
          return Column(
            children: [
              SizedBox(
                height: 7.h,
              ),
              Item(
                item: familyMembersList[index],
              ),
            ],
          );
        },
      ),
    );
  }
}
