import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:germanonic/components/phrases_item.dart';

import '../../data/models/item_model.dart';

class PhrasesScreen extends StatelessWidget {
  const PhrasesScreen({super.key});
  static String id = "phrases_screen";
  final List<ItemModel> phrasesList = const [
    ItemModel(
        deName: "Wie ist dein name ?",
        enName: "What is your name ?",
        sound: "sounds/phrases/Wie ist dein name.mp3"),
    ItemModel(
        deName: "Mein name ist Mark.",
        enName: "My name is Mark.",
        sound: "sounds/phrases/mein name ist Mark.mp3"),
    ItemModel(
        deName: "Wie alt bist du ?",
        enName: "How old are you ?",
        sound: "sounds/phrases/Wie alt bist du.mp3"),
    ItemModel(
        deName: "Ich bin 25 Jahre alt.",
        enName: "I'm 25 years old.",
        sound: "sounds/phrases/Ich bin 25 Jahre alt.mp3"),
    ItemModel(
        deName: "Wie geht es dir ?",
        enName: "How are you ?",
        sound: "sounds/phrases/Wie geht es dir.mp3"),
    ItemModel(
        deName: "Mir geht es gut.",
        enName: "I'm fine.",
        sound: "sounds/phrases/Mir geht es gut.mp3"),
    ItemModel(
        deName: "Wo gehst du hin ?",
        enName: "Where are you going ?",
        sound: "sounds/phrases/Wo gehst du hin.mp3"),
    ItemModel(
        deName: "Ich gehe ins Kino.",
        enName: "I'm going to the cinema.",
        sound: "sounds/phrases/Ich gehe ins Kino.mp3"),
    ItemModel(
        deName: "Liebst du die Programmierung ?",
        enName: "Do you love programming ?",
        sound: "sounds/phrases/Liebst du die Programmierung.mp3"),
    ItemModel(
        deName: "Ja, ich liebe die Programmierung.",
        enName: "Yes, I love programming",
        sound: "sounds/phrases/Ja, ich liebe die Programmierung.mp3"),
    ItemModel(
        deName: "Ich bin froh.",
        enName: "I'm happy.",
        sound: "sounds/phrases/Ich bin froh..mp3"),
    ItemModel(
        deName: "Diese kinder sprechen kein Deutsch.",
        enName: "Those children do not speak German.",
        sound: "sounds/phrases/Diese Kinder sprechen kein Deutsch..mp3"),
    ItemModel(
        deName: "Dieses kleine Schwarze ist nicht teuer.",
        enName: "This little black dress isn’t expensive.",
        sound: "sounds/phrases/Dieses kleine Schwarze ist nicht teuer..mp3"),
    ItemModel(
        deName: "Er mag kein Gemüse.",
        enName: "He doesn't like vegetables.",
        sound: "sounds/phrases/Er mag kein Gemüse..mp3"),
    ItemModel(
        deName: "Ich möchte nichts trinken.",
        enName: "I don’t want anything to drink.",
        sound: "sounds/phrases/Ich möchte nichts trinken..mp3"),
    ItemModel(
        deName: "Meine Schule beginnt um 8:00 Uhr.",
        enName: "My school starts at 8:00.",
        sound: "sounds/phrases/Meine Schule beginnt um 800 Uhr..mp3"),
    ItemModel(
        deName: "Sein Hund bellt laut.",
        enName: "His dog barks loudly.",
        sound: "sounds/phrases/Sein Hund bellt laut..mp3"),
    ItemModel(
        deName: "Sie fahren mit dem Bus zur Arbeit.",
        enName: "They take the bus to work.",
        sound: "sounds/phrases/Sie fahren mit dem Bus zur Arbeit..mp3"),
    ItemModel(
        deName: "Sie trainiert jeden Morgen.",
        enName: "She exercises every morning.",
        sound: "sounds/phrases/Sie trainiert jeden Morgen..mp3"),
    ItemModel(
        deName: "Wir essen immer zusammen zu Abend.",
        enName: "We always eat dinner together.",
        sound: "sounds/phrases/Wir essen immer zusammen zu Abend..mp3"),
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
          "Phrases",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: ListView.builder(
        physics: const BouncingScrollPhysics(),
        itemCount: phrasesList.length,
        itemBuilder: (context, index) {
          return Column(
            children: [
              SizedBox(
                height: 7.h,
              ),
              PhrasesItem(
                item: phrasesList[index],
              ),
            ],
          );
        },
      ),
    );
  }
}
