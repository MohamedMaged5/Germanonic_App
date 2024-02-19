import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:germanonic/components/item.dart';

import '../../data/models/item_model.dart';

class WeekdaysScreen extends StatelessWidget {
  const WeekdaysScreen({super.key});
  static String id = "weekdays_screen";
  final List<ItemModel> weekdaysList = const [
    ItemModel(
        img: "assets/images/weekdays/saturday.png",
        deName: "Samstag",
        enName: "Saturday",
        sound: "sounds/weekdays/Samstag.mp3"),
    ItemModel(
        img: "assets/images/weekdays/sunday.png",
        deName: "Sonntag",
        enName: "Sunday",
        sound: "sounds/weekdays/Sonntag.mp3"),
    ItemModel(
        img: "assets/images/weekdays/monday.png",
        deName: "Montag",
        enName: "Monday",
        sound: "sounds/weekdays/Montag.mp3"),
    ItemModel(
        img: "assets/images/weekdays/tuesday.png",
        deName: "Dienstag",
        enName: "Tuesday",
        sound: "sounds/weekdays/Dienstag.mp3"),
    ItemModel(
        img: "assets/images/weekdays/wednesday.png",
        deName: "Mittwoch",
        enName: "Wednesday",
        sound: "sounds/weekdays/Mittwoch.mp3"),
    ItemModel(
        img: "assets/images/weekdays/thursday.png",
        deName: "Donnerstag",
        enName: "Thursday",
        sound: "sounds/weekdays/Donnerstag.mp3"),
    ItemModel(
        img: "assets/images/weekdays/friday.png",
        deName: "Freitag",
        enName: "Friday",
        sound: "sounds/weekdays/Freitag.mp3"),
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
          "Weekdays",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: ListView.builder(
        physics: const BouncingScrollPhysics(),
        itemCount: weekdaysList.length,
        itemBuilder: (context, index) {
          return Column(
            children: [
              SizedBox(
                height: 7.h,
              ),
              Item(
                item: weekdaysList[index],
              ),
            ],
          );
        },
      ),
    );
  }
}
