import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:germanonic/components/item.dart';

import '../../data/models/item_model.dart';

class SportsScreen extends StatelessWidget {
  const SportsScreen({super.key});
  static String id = "sports_screen";
  final List<ItemModel> sportsList = const [
    ItemModel(
        img: "assets/images/sports/archery.png",
        deName: "Bogenschießen",
        enName: "Archery",
        sound: "sounds/sports/Bogenschießen.mp3"),
    ItemModel(
        img: "assets/images/sports/badminton.png",
        deName: "Badminton",
        enName: "Badminton",
        sound: "sounds/sports/Badminton.mp3"),
    ItemModel(
        img: "assets/images/sports/baseball.png",
        deName: "Baseball",
        enName: "Baseball",
        sound: "sounds/sports/Baseball.mp3"),
    ItemModel(
        img: "assets/images/sports/basketball.png",
        deName: "Basketball",
        enName: "Basketball",
        sound: "sounds/sports/Basketball.mp3"),
    ItemModel(
        img: "assets/images/sports/billiards.png",
        deName: "Billard",
        enName: "Billiards",
        sound: "sounds/sports/Billard.mp3"),
    ItemModel(
        img: "assets/images/sports/bodybuilding.png",
        deName: "Bodybuilding",
        enName: "Bodybuilding",
        sound: "sounds/sports/Bodybuilding.mp3"),
    ItemModel(
        img: "assets/images/sports/boxing.png",
        deName: "Boxen",
        enName: "Boxing",
        sound: "sounds/sports/Boxen.mp3"),
    ItemModel(
        img: "assets/images/sports/chess.png",
        deName: "Schach",
        enName: "Chess",
        sound: "sounds/sports/Schach.mp3"),
    ItemModel(
        img: "assets/images/sports/cycling.png",
        deName: "Radfahren",
        enName: "Cycling",
        sound: "sounds/sports/Radfahren.mp3"),
    ItemModel(
        img: "assets/images/sports/diving.png",
        deName: "Tauchen",
        enName: "Diving",
        sound: "sounds/sports/Tauchen.mp3"),
    ItemModel(
        img: "assets/images/sports/fencing.png",
        deName: "Fechten",
        enName: "Fencing",
        sound: "sounds/sports/Fechten.mp3"),
    ItemModel(
        img: "assets/images/sports/football.png",
        deName: "Fußball",
        enName: "Football",
        sound: "sounds/sports/Fußball.mp3"),
    ItemModel(
        img: "assets/images/sports/golf.png",
        deName: "Golf",
        enName: "Golf",
        sound: "sounds/sports/Golf.mp3"),
    ItemModel(
        img: "assets/images/sports/gymnastics.png",
        deName: "Gymnastik",
        enName: "Gymnastics",
        sound: "sounds/sports/Gymnastik.mp3"),
    ItemModel(
        img: "assets/images/sports/handball.png",
        deName: "Handball",
        enName: "Handball",
        sound: "sounds/sports/Handball.mp3"),
    ItemModel(
        img: "assets/images/sports/hockey.png",
        deName: "Eishockey",
        enName: "Hockey",
        sound: "sounds/sports/Eishockey.mp3"),
    ItemModel(
        img: "assets/images/sports/karate.png",
        deName: "Karate",
        enName: "Karate",
        sound: "sounds/sports/Karate.mp3"),
    ItemModel(
        img: "assets/images/sports/kayaking.png",
        deName: "Kajakfahren",
        enName: "Kayaking",
        sound: "sounds/sports/Kajakfahren.mp3"),
    ItemModel(
        img: "assets/images/sports/powerlifting.png",
        deName: "Kraftdreikampf",
        enName: "Powerlifting",
        sound: "sounds/sports/Kraftdreikampf.mp3"),
    ItemModel(
        img: "assets/images/sports/rowing.png",
        deName: "Rudern",
        enName: "Rowing",
        sound: "sounds/sports/Rudern.mp3"),
    ItemModel(
        img: "assets/images/sports/rugby.png",
        deName: "Rugby",
        enName: "Rugby",
        sound: "sounds/sports/Rugby.mp3"),
    ItemModel(
        img: "assets/images/sports/running.png",
        deName: "läuft",
        enName: "Running",
        sound: "sounds/sports/läuft.mp3"),
    ItemModel(
        img: "assets/images/sports/sailing.png",
        deName: "Segeln",
        enName: "Sailing",
        sound: "sounds/sports/Segeln.mp3"),
    ItemModel(
        img: "assets/images/sports/skateboarding.png",
        deName: "Skateboarden",
        enName: "Skateboarding",
        sound: "sounds/sports/Skateboarden.mp3"),
    ItemModel(
        img: "assets/images/sports/skiing.png",
        deName: "Skifahren",
        enName: "Skiing",
        sound: "sounds/sports/Skifahren.mp3"),
    ItemModel(
        img: "assets/images/sports/surfing.png",
        deName: "Surfen",
        enName: "Surfing",
        sound: "sounds/sports/Surfen.mp3"),
    ItemModel(
        img: "assets/images/sports/swimming.png",
        deName: "Baden",
        enName: "Swimming",
        sound: "sounds/sports/Baden.mp3"),
    ItemModel(
        img: "assets/images/sports/table tennis.png",
        deName: "Tischtennis",
        enName: "Table Tennis",
        sound: "sounds/sports/Tischtennis.mp3"),
    ItemModel(
        img: "assets/images/sports/tennis.png",
        deName: "Tennis",
        enName: "Tennis",
        sound: "sounds/sports/Tennis.mp3"),
    ItemModel(
        img: "assets/images/sports/volleyball.png",
        deName: "Volleyball",
        enName: "Volleyball",
        sound: "sounds/sports/Volleyball.mp3"),
    ItemModel(
        img: "assets/images/sports/wrestling.png",
        deName: "Ringkampf",
        enName: "Wrestling",
        sound: "sounds/sports/Ringkampf.mp3"),
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
          "Sports",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: ListView.builder(
        physics: const BouncingScrollPhysics(),
        itemCount: sportsList.length,
        itemBuilder: (context, index) {
          return Column(
            children: [
              SizedBox(
                height: 7.h,
              ),
              Item(
                item: sportsList[index],
              ),
            ],
          );
        },
      ),
    );
  }
}
