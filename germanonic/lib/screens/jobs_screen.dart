import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:germanonic/components/item.dart';

import '../../data/models/item_model.dart';

class JobsScreen extends StatelessWidget {
  const JobsScreen({super.key});
  static String id = "jobs_screen";
  final List<ItemModel> jobsList = const [
    ItemModel(
        img: "assets/images/jobs/astronaut.png",
        deName: "Astronaut",
        enName: "Astronaut",
        sound: "sounds/jobs/Astronaut.mp3"),
    ItemModel(
        img: "assets/images/jobs/builder.png",
        deName: "Baumeister",
        enName: "Builder",
        sound: "sounds/jobs/Baumeister.mp3"),
    ItemModel(
        img: "assets/images/jobs/cleaner.png",
        deName: "Reiniger",
        enName: "Cleaner",
        sound: "sounds/jobs/Reiniger.mp3"),
    ItemModel(
        img: "assets/images/jobs/cook_male.png",
        deName: "Koch",
        enName: "Cook",
        sound: "sounds/jobs/Koch.mp3"),
    ItemModel(
        img: "assets/images/jobs/cook.png",
        deName: "Köchin",
        enName: "Female Cook",
        sound: "sounds/jobs/Köchin.mp3"),
    ItemModel(
        img: "assets/images/jobs/detective.png",
        deName: "Detektiv",
        enName: "Detective",
        sound: "sounds/jobs/Detektiv.mp3"),
    ItemModel(
        img: "assets/images/jobs/director.png",
        deName: "Direktor",
        enName: "Director",
        sound: "sounds/jobs/Direktor.mp3"),
    ItemModel(
        img: "assets/images/jobs/diver.png",
        deName: "Taucher",
        enName: "Diver",
        sound: "sounds/jobs/Taucher.mp3"),
    ItemModel(
        img: "assets/images/jobs/doctor.png",
        deName: "Ärztin",
        enName: "Female Doctor",
        sound: "sounds/jobs/Ärztin.mp3"),
    ItemModel(
        img: "assets/images/jobs/driver.png",
        deName: "Fahrer",
        enName: "Driver",
        sound: "sounds/jobs/Fahrer.mp3"),
    ItemModel(
        img: "assets/images/jobs/engineer.png",
        deName: "Ingenieur",
        enName: "Engineer",
        sound: "sounds/jobs/Ingenieur.mp3"),
    ItemModel(
        img: "assets/images/jobs/farmer.png",
        deName: "Bauer",
        enName: "Farmer",
        sound: "sounds/jobs/Bauer.mp3"),
    ItemModel(
        img: "assets/images/jobs/firefighter.png",
        deName: "Feuerwehrmann",
        enName: "Firefighter",
        sound: "sounds/jobs/Feuerwehrmann.mp3"),
    ItemModel(
        img: "assets/images/jobs/footballer.png",
        deName: "Fußballer",
        enName: "Footballer",
        sound: "sounds/jobs/Fußballer.mp3"),
    ItemModel(
        img: "assets/images/jobs/journalist.png",
        deName: "Journalist",
        enName: "Journalist",
        sound: "sounds/jobs/Journalist.mp3"),
    ItemModel(
        img: "assets/images/jobs/judge.png",
        deName: "Richter",
        enName: "Judge",
        sound: "sounds/jobs/Richter.mp3"),
    ItemModel(
        img: "assets/images/jobs/miner.png",
        deName: "Bergmann",
        enName: "Miner",
        sound: "sounds/jobs/Bergmann.mp3"),
    ItemModel(
        img: "assets/images/jobs/musician.png",
        deName: "Musiker",
        enName: "Musician",
        sound: "sounds/jobs/Musiker.mp3"),
    ItemModel(
        img: "assets/images/jobs/nurse.png",
        deName: "Krankenschwester",
        enName: "Nurse",
        sound: "sounds/jobs/Krankenschwester.mp3"),
    ItemModel(
        img: "assets/images/jobs/photographer.png",
        deName: "Fotograf",
        enName: "Photographer",
        sound: "sounds/jobs/Fotograf.mp3"),
    ItemModel(
        img: "assets/images/jobs/pilot.png",
        deName: "Pilot",
        enName: "Pilot",
        sound: "sounds/jobs/Pilot.mp3"),
    ItemModel(
        img: "assets/images/jobs/policeman.png",
        deName: "Polizist",
        enName: "Policeman",
        sound: "sounds/jobs/Polizist.mp3"),
    ItemModel(
        img: "assets/images/jobs/postman.png",
        deName: "Briefträger",
        enName: "Postman",
        sound: "sounds/jobs/Briefträger.mp3"),
    ItemModel(
        img: "assets/images/jobs/scientist.png",
        deName: "Wissenschaftler",
        enName: "Scientist",
        sound: "sounds/jobs/Wissenschaftler.mp3"),
    ItemModel(
        img: "assets/images/jobs/soldier.png",
        deName: "Soldat",
        enName: "Soldier",
        sound: "sounds/jobs/Soldat.mp3"),
    ItemModel(
        img: "assets/images/jobs/stewardess.png",
        deName: "Stewardess",
        enName: "Stewardess",
        sound: "sounds/jobs/Stewardess.mp3"),
    ItemModel(
        img: "assets/images/jobs/teacher.png",
        deName: "Lehrerin",
        enName: "Female Teacher",
        sound: "sounds/jobs/Lehrerin.mp3"),
    ItemModel(
        img: "assets/images/jobs/waiter.png",
        deName: "Kellner",
        enName: "Waiter",
        sound: "sounds/jobs/Kellner.mp3"),
    ItemModel(
        img: "assets/images/jobs/welder.png",
        deName: "Schweißer",
        enName: "Welder",
        sound: "sounds/jobs/Schweißer.mp3"),
    ItemModel(
        img: "assets/images/jobs/writer.png",
        deName: "Schriftsteller",
        enName: "Writer",
        sound: "sounds/jobs/Schriftsteller.mp3"),
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
          "Jobs",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: ListView.builder(
        physics: const BouncingScrollPhysics(),
        itemCount: jobsList.length,
        itemBuilder: (context, index) {
          return Column(
            children: [
              SizedBox(
                height: 7.h,
              ),
              Item(
                item: jobsList[index],
              ),
            ],
          );
        },
      ),
    );
  }
}
