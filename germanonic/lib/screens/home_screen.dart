import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:germanonic/screens/bodyparts_screen.dart';
import 'package:germanonic/screens/clothes_screen.dart';
import 'package:germanonic/screens/colors_screen.dart';
import 'package:germanonic/screens/countries_screen.dart';
import 'package:germanonic/screens/familymembers_screen.dart';
import 'package:germanonic/screens/foodanddrinks_screen.dart';
import 'package:germanonic/screens/numbers_screen.dart';
import 'package:germanonic/screens/phrases_screen.dart';
import 'package:germanonic/components/category.dart';
import 'package:germanonic/screens/places_screen.dart';
import 'package:germanonic/screens/sports_screen.dart';
import 'package:germanonic/screens/weekdays_screen.dart';

import 'jobs_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: const Color(0xFF1D1C21),
        title: Text(
          "Germanonic",
          style: TextStyle(fontSize: 25.sp, color: Colors.white),
        ),
      ),
      body: ListView(
        physics: const BouncingScrollPhysics(),
        children: [
          SizedBox(
            height: 6.h,
          ),
          Category(
            cateNameEn: "Numbers",
            cateNameDe: "Zahlen",
            ontap: () {
              Navigator.pushNamed(context, NumbersScreen.id);
            },
          ),
          SizedBox(
            height: 6.h,
          ),
          Category(
            cateNameEn: "Colors",
            cateNameDe: "Farben",
            ontap: () {
              Navigator.pushNamed(context, ColorsScreen.id);
            },
          ),
          SizedBox(
            height: 6.h,
          ),
          Category(
            cateNameEn: "Family Members",
            cateNameDe: "Familienmitglieder",
            ontap: () {
              Navigator.pushNamed(context, FamilyMembersScreen.id);
            },
          ),
          SizedBox(
            height: 6.h,
          ),
          Category(
            cateNameEn: "Places",
            cateNameDe: "Setzt",
            ontap: () {
              Navigator.pushNamed(context, PlacesScreen.id);
            },
          ),
          SizedBox(
            height: 6.h,
          ),
          Category(
              cateNameEn: "Jobs",
              cateNameDe: "Arbeitsplätze",
              ontap: () {
                Navigator.pushNamed(context, JobsScreen.id);
              }),
          SizedBox(
            height: 6.h,
          ),
          Category(
              cateNameEn: "Sports",
              cateNameDe: "Sport",
              ontap: () {
                Navigator.pushNamed(context, SportsScreen.id);
              }),
          SizedBox(
            height: 6.h,
          ),
          Category(
              cateNameEn: "Countries",
              cateNameDe: "Länder",
              ontap: () {
                Navigator.pushNamed(context, CountriesScreen.id);
              }),
          SizedBox(
            height: 6.h,
          ),
          Category(
            cateNameEn: "Food and Drinks",
            cateNameDe: "Essen und Trinken",
            ontap: () {
              Navigator.pushNamed(context, FoodAndDrinksScreen.id);
            },
          ),
          SizedBox(
            height: 6.h,
          ),
          Category(
            cateNameEn: "Weekadays",
            cateNameDe: "Wochentage",
            ontap: () {
              Navigator.pushNamed(context, WeekdaysScreen.id);
            },
          ),
          SizedBox(
            height: 6.h,
          ),
          Category(
            cateNameEn: "Clothes",
            cateNameDe: "Kleidung",
            ontap: () {
              Navigator.pushNamed(context, ClothesScreen.id);
            },
          ),
          SizedBox(
            height: 6.h,
          ),
          Category(
            cateNameEn: "Body Parts",
            cateNameDe: "Körperteile",
            ontap: () {
              Navigator.pushNamed(context, BodyPartsScreen.id);
            },
          ),
          SizedBox(
            height: 6.h,
          ),
          Category(
            cateNameEn: "Phrases",
            cateNameDe: "Phrasen",
            ontap: () {
              Navigator.pushNamed(context, PhrasesScreen.id);
            },
          ),
        ],
      ),
    );
  }
}
