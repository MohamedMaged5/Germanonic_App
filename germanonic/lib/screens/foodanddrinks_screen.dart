import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:germanonic/components/item.dart';

import '../../data/models/item_model.dart';

class FoodAndDrinksScreen extends StatelessWidget {
  const FoodAndDrinksScreen({super.key});
  static String id = "food_and_drinks_screen";
  final List<ItemModel> foodAndDrinksList = const [
    ItemModel(
        img: "assets/images/food and drinks/apple.png",
        deName: "Apfel",
        enName: "Apple",
        sound: "sounds/food and drinks/Apfel.mp3"),
    ItemModel(
        img: "assets/images/food and drinks/apple-juice.png",
        deName: "Apfelsaft",
        enName: "Apple Juice",
        sound: "sounds/food and drinks/Apfelsaft.mp3"),
    ItemModel(
        img: "assets/images/food and drinks/banana.png",
        deName: "Banane",
        enName: "Banana",
        sound: "sounds/food and drinks/Banane.mp3"),
    ItemModel(
        img: "assets/images/food and drinks/bread.png",
        deName: "Brot",
        enName: "Bread",
        sound: "sounds/food and drinks/Brot.mp3"),
    ItemModel(
        img: "assets/images/food and drinks/butter.png",
        deName: "Butter",
        enName: "Butter",
        sound: "sounds/food and drinks/Butter.mp3"),
    ItemModel(
        img: "assets/images/food and drinks/cake.png",
        deName: "Torte",
        enName: "Cake",
        sound: "sounds/food and drinks/Torte.mp3"),
    ItemModel(
        img: "assets/images/food and drinks/chicken.png",
        deName: "Hähnchen",
        enName: "Chicken",
        sound: "sounds/food and drinks/Hähnchen.mp3"),
    ItemModel(
        img: "assets/images/food and drinks/chokolate.png",
        deName: "Schokolade",
        enName: "Chocolate",
        sound: "sounds/food and drinks/Schokolade.mp3"),
    ItemModel(
        img: "assets/images/food and drinks/cocoa.png",
        deName: "Kakao",
        enName: "Cocoa",
        sound: "sounds/food and drinks/Kakao.mp3"),
    ItemModel(
        img: "assets/images/food and drinks/coffee.png",
        deName: "Kaffee",
        enName: "Coffee",
        sound: "sounds/food and drinks/Kaffee.mp3"),
    ItemModel(
        img: "assets/images/food and drinks/cola.png",
        deName: "Cola",
        enName: "Cola",
        sound: "sounds/food and drinks/Cola.mp3"),
    ItemModel(
        img: "assets/images/food and drinks/cucumber.png",
        deName: "Gurke",
        enName: "Cucumber",
        sound: "sounds/food and drinks/Gurke.mp3"),
    ItemModel(
        img: "assets/images/food and drinks/egg.png",
        deName: "Ei",
        enName: "Egg",
        sound: "sounds/food and drinks/Ei.mp3"),
    ItemModel(
        img: "assets/images/food and drinks/fish.png",
        deName: "Fisch",
        enName: "Fish",
        sound: "sounds/food and drinks/Fisch.mp3"),
    ItemModel(
        img: "assets/images/food and drinks/fruits.png",
        deName: "Früchte",
        enName: "Fruits",
        sound: "sounds/food and drinks/Früchte.mp3"),
    ItemModel(
        img: "assets/images/food and drinks/grape.png",
        deName: "Traube",
        enName: "Grape",
        sound: "sounds/food and drinks/Traube.mp3"),
    ItemModel(
        img: "assets/images/food and drinks/ice-cream.png",
        deName: "Eiscreme",
        enName: "Ice Cream",
        sound: "sounds/food and drinks/Eiscreme.mp3"),
    ItemModel(
        img: "assets/images/food and drinks/kiwi.png",
        deName: "Kiwi",
        enName: "Kiwi",
        sound: "sounds/food and drinks/Kiwi.mp3"),
    ItemModel(
        img: "assets/images/food and drinks/meat.png",
        deName: "Fleisch",
        enName: "Meat",
        sound: "sounds/food and drinks/Fleisch.mp3"),
    ItemModel(
        img: "assets/images/food and drinks/milk.png",
        deName: "Milch",
        enName: "Milk",
        sound: "sounds/food and drinks/Milch.mp3"),
    ItemModel(
        img: "assets/images/food and drinks/mineral water.png",
        deName: "Mineralwasser",
        enName: "Mineral Water",
        sound: "sounds/food and drinks/Mineralwasser.mp3"),
    ItemModel(
        img: "assets/images/food and drinks/noodle.png",
        deName: "Nudel",
        enName: "Noodle",
        sound: "sounds/food and drinks/Nudel.mp3"),
    ItemModel(
        img: "assets/images/food and drinks/olive-oil.png",
        deName: "Olivenöl",
        enName: "Olive Oil",
        sound: "sounds/food and drinks/Olivenöl.mp3"),
    ItemModel(
        img: "assets/images/food and drinks/onion.png",
        deName: "Zwiebel",
        enName: "Onion",
        sound: "sounds/food and drinks/Zwiebel.mp3"),
    ItemModel(
        img: "assets/images/food and drinks/orange.png",
        deName: "Orange",
        enName: "Orange",
        sound: "sounds/food and drinks/Orange.mp3"),
    ItemModel(
        img: "assets/images/food and drinks/orange-juice.png",
        deName: "Orangensaft",
        enName: "Orange Juice",
        sound: "sounds/food and drinks/Orangensaft.mp3"),
    ItemModel(
        img: "assets/images/food and drinks/paprika.png",
        deName: "Paprika",
        enName: "Paprika",
        sound: "sounds/food and drinks/Paprika.mp3"),
    ItemModel(
        img: "assets/images/food and drinks/pear.png",
        deName: "Birne",
        enName: "Pear",
        sound: "sounds/food and drinks/Birne.mp3"),
    ItemModel(
        img: "assets/images/food and drinks/potato.png",
        deName: "Kartoffel",
        enName: "Potato",
        sound: "sounds/food and drinks/Kartoffel.mp3"),
    ItemModel(
        img: "assets/images/food and drinks/rice.png",
        deName: "Reis",
        enName: "Rice",
        sound: "sounds/food and drinks/Reis.mp3"),
    ItemModel(
        img: "assets/images/food and drinks/salad.png",
        deName: "Salat",
        enName: "Salad",
        sound: "sounds/food and drinks/Salat.mp3"),
    ItemModel(
        img: "assets/images/food and drinks/sausage.png",
        deName: "Wurst",
        enName: "Sausage",
        sound: "sounds/food and drinks/Wurst.mp3"),
    ItemModel(
        img: "assets/images/food and drinks/spaghetti.png",
        deName: "Spaghetti",
        enName: "Spaghetti",
        sound: "sounds/food and drinks/Spaghetti.mp3"),
    ItemModel(
        img: "assets/images/food and drinks/tea.png",
        deName: "Tee",
        enName: "Tea",
        sound: "sounds/food and drinks/Tee.mp3"),
    ItemModel(
        img: "assets/images/food and drinks/tomato.png",
        deName: "Tomate",
        enName: "Tomato",
        sound: "sounds/food and drinks/Tomate.mp3"),
    ItemModel(
        img: "assets/images/food and drinks/vegetables.png",
        deName: "Gemüse",
        enName: "Vegetables",
        sound: "sounds/food and drinks/Gemüse.mp3"),
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
          "Food and Drinks",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: ListView.builder(
        physics: const BouncingScrollPhysics(),
        itemCount: foodAndDrinksList.length,
        itemBuilder: (context, index) {
          return Column(
            children: [
              SizedBox(
                height: 7.h,
              ),
              Item(
                item: foodAndDrinksList[index],
              ),
            ],
          );
        },
      ),
    );
  }
}
