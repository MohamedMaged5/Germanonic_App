import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:germanonic/components/item.dart';

import '../../data/models/item_model.dart';

class NumbersScreen extends StatelessWidget {
  const NumbersScreen({super.key});
  static String id = "numbers_screen";
  final List<ItemModel> numbersList = const [
    ItemModel(
        img: "assets/images/numbers/zero.png",
        deName: "Null",
        enName: "Zero",
        sound: "sounds/numbers/Null.mp3"),
    ItemModel(
        img: "assets/images/numbers/one.png",
        deName: "Eins",
        enName: "One",
        sound: "sounds/numbers/Eins.mp3"),
    ItemModel(
        img: "assets/images/numbers/two.png",
        deName: "Zwei",
        enName: "Two",
        sound: "sounds/numbers/Zwei.mp3"),
    ItemModel(
        img: "assets/images/numbers/three.png",
        deName: "Drei",
        enName: "Three",
        sound: "sounds/numbers/Drei.mp3"),
    ItemModel(
        img: "assets/images/numbers/4.png",
        deName: "Vier",
        enName: "Four",
        sound: "sounds/numbers/Vier.mp3"),
    ItemModel(
        img: "assets/images/numbers/five.png",
        deName: "Fünf",
        enName: "Five",
        sound: "sounds/numbers/Fünf.mp3"),
    ItemModel(
        img: "assets/images/numbers/six.png",
        deName: "Sechs",
        enName: "Six",
        sound: "sounds/numbers/Sechs.mp3"),
    ItemModel(
        img: "assets/images/numbers/seven.png",
        deName: "Sieben",
        enName: "Seven",
        sound: "sounds/numbers/Sieben.mp3"),
    ItemModel(
        img: "assets/images/numbers/eight.png",
        deName: "Acht",
        enName: "Eight",
        sound: "sounds/numbers/Acht.mp3"),
    ItemModel(
        img: "assets/images/numbers/nine.png",
        deName: "Neun",
        enName: "Nine",
        sound: "sounds/numbers/Neun.mp3"),
    ItemModel(
        img: "assets/images/numbers/number-10.png",
        deName: "Zehn",
        enName: "Ten",
        sound: "sounds/numbers/Zehn.mp3"),
    ItemModel(
        img: "assets/images/numbers/number-11.png",
        deName: "Elf",
        enName: "Eleven",
        sound: "sounds/numbers/Elf.mp3"),
    ItemModel(
        img: "assets/images/numbers/number-12.png",
        deName: "Zwölf",
        enName: "Twelve",
        sound: "sounds/numbers/Zwölf.mp3"),
    ItemModel(
        img: "assets/images/numbers/number-13.png",
        deName: "Dreizehn",
        enName: "Thirteen",
        sound: "sounds/numbers/Dreizehn.mp3"),
    ItemModel(
        img: "assets/images/numbers/number-14.png",
        deName: "Vierzehn",
        enName: "Fourteen",
        sound: "sounds/numbers/Vierzehn.mp3"),
    ItemModel(
        img: "assets/images/numbers/number-15.png",
        deName: "Fünfzehn",
        enName: "Fiveteen",
        sound: "sounds/numbers/Fünfzehn.mp3"),
    ItemModel(
        img: "assets/images/numbers/number-16.png",
        deName: "Sechzehn",
        enName: "Sixteen",
        sound: "sounds/numbers/Sechzehn.mp3"),
    ItemModel(
        img: "assets/images/numbers/number-17.png",
        deName: "Siebzehn",
        enName: "Seventeen",
        sound: "sounds/numbers/Siebzehn.mp3"),
    ItemModel(
        img: "assets/images/numbers/number-18.png",
        deName: "Achtzehn",
        enName: "Eightteen",
        sound: "sounds/numbers/Achtzehn.mp3"),
    ItemModel(
        img: "assets/images/numbers/number-19.png",
        deName: "Neunzehn",
        enName: "Nineteen",
        sound: "sounds/numbers/Neunzehn.mp3"),
    ItemModel(
        img: "assets/images/numbers/number-20.png",
        deName: "Zwanzig",
        enName: "Twenty",
        sound: "sounds/numbers/Zwanzig.mp3"),
    ItemModel(
        img: "assets/images/numbers/number-21.png",
        deName: "Ein und zwanzig",
        enName: "Twenty one",
        sound: "sounds/numbers/Ein und Zwanzig.mp3"),
    ItemModel(
        img: "assets/images/numbers/number-22.png",
        deName: "Zwei und zwanzig",
        enName: "Twenty two",
        sound: "sounds/numbers/Zwei und Zwanzig.mp3"),
    ItemModel(
        img: "assets/images/numbers/number-23.png",
        deName: "Drei und zwanzig",
        enName: "Twenty three",
        sound: "sounds/numbers/Drei und Zwanzig.mp3"),
    ItemModel(
        img: "assets/images/numbers/number-24.png",
        deName: "Vier und zwanzig",
        enName: "Twenty four",
        sound: "sounds/numbers/Vier und Zwanzig.mp3"),
    ItemModel(
        img: "assets/images/numbers/thirty.png",
        deName: "Dreißig",
        enName: "Thirty",
        sound: "sounds/numbers/Dreißig.mp3"),
    ItemModel(
        img: "assets/images/numbers/forty.png",
        deName: "Vierzig",
        enName: "Forty",
        sound: "sounds/numbers/Vierzig.mp3"),
    ItemModel(
        img: "assets/images/numbers/fifty.png",
        deName: "Fünfzig",
        enName: "Fifty",
        sound: "sounds/numbers/Fünfzig.mp3"),
    ItemModel(
        img: "assets/images/numbers/sixty.png",
        deName: "Sechzig",
        enName: "Sixty",
        sound: "sounds/numbers/Sechzig.mp3"),
    ItemModel(
        img: "assets/images/numbers/seventy.png",
        deName: "Siebzig",
        enName: "Seventy",
        sound: "sounds/numbers/Siebzig.mp3"),
    ItemModel(
        img: "assets/images/numbers/eighty.png",
        deName: "Achtzig",
        enName: "Eighty",
        sound: "sounds/numbers/Achtzig.mp3"),
    ItemModel(
        img: "assets/images/numbers/ninety.png",
        deName: "Neunzig",
        enName: "Ninety",
        sound: "sounds/numbers/Neunzig.mp3"),
    ItemModel(
        img: "assets/images/numbers/one-hundred.png",
        deName: "Hundert",
        enName: "Hundred",
        sound: "sounds/numbers/Hundert.mp3"),
    ItemModel(
        img: "assets/images/numbers/101.png",
        deName: "Ein hundert eins",
        enName: "One hundred and one",
        sound: "sounds/numbers/Ein hundert eins.mp3"),
    ItemModel(
        img: "assets/images/numbers/102.png",
        deName: "Ein hundert und zwei",
        enName: "One hundred and two",
        sound: "sounds/numbers/Ein hundert und zwei.mp3"),
    ItemModel(
        img: "assets/images/numbers/111.png",
        deName: "Ein hundert und elf",
        enName: "One hundred and eleven",
        sound: "sounds/numbers/Ein hundert und elf.mp3"),
    ItemModel(
        img: "assets/images/numbers/121.png",
        deName: "Ein hundert ein und zwanzig",
        enName: "One hundred and twenty one",
        sound: "sounds/numbers/Ein hundert ein und zwanzig.mp3"),
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
          "Numbers",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: ListView.builder(
        physics: const BouncingScrollPhysics(),
        itemCount: numbersList.length,
        itemBuilder: (context, index) {
          return Column(
            children: [
              SizedBox(
                height: 7.h,
              ),
              Item(
                item: numbersList[index],
              ),
            ],
          );
        },
      ),
    );
  }
}
