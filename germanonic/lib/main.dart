import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:germanonic/screens/bodyparts_screen.dart';
import 'package:germanonic/screens/clothes_screen.dart';
import 'package:germanonic/screens/colors_screen.dart';
import 'package:germanonic/screens/countries_screen.dart';
import 'package:germanonic/screens/familymembers_screen.dart';
import 'package:germanonic/screens/foodanddrinks_screen.dart';
import 'package:germanonic/data/cubits/sound_cubit/sound_cubit.dart';
import 'package:germanonic/screens/jobs_screen.dart';
import 'package:germanonic/screens/numbers_screen.dart';
import 'package:germanonic/screens/phrases_screen.dart';
import 'package:germanonic/screens/places_screen.dart';
import 'package:germanonic/screens/splash_screen.dart';
import 'package:germanonic/screens/sports_screen.dart';
import 'package:germanonic/screens/weekdays_screen.dart';

void main() {
  runApp(const Germanonic());
}

class Germanonic extends StatelessWidget {
  const Germanonic({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
        providers: [
          BlocProvider<SoundCubit>(
            create: (context) => SoundCubit(),
          ),
        ],
        child: ScreenUtilInit(
          designSize: const Size(392.7, 781.1),
          minTextAdapt: true,
          splitScreenMode: true,
          builder: (context, child) {
            return MaterialApp(
              routes: {
                BodyPartsScreen.id: (context) => const BodyPartsScreen(),
                ClothesScreen.id: (context) => const ClothesScreen(),
                ColorsScreen.id: (context) => const ColorsScreen(),
                CountriesScreen.id: (context) => const CountriesScreen(),
                FamilyMembersScreen.id: (context) =>
                    const FamilyMembersScreen(),
                FoodAndDrinksScreen.id: (context) =>
                    const FoodAndDrinksScreen(),
                JobsScreen.id: (context) => const JobsScreen(),
                NumbersScreen.id: (context) => const NumbersScreen(),
                PhrasesScreen.id: (context) => const PhrasesScreen(),
                PlacesScreen.id: (context) => const PlacesScreen(),
                SportsScreen.id: (context) => const SportsScreen(),
                WeekdaysScreen.id: (context) => const WeekdaysScreen(),
              },
              debugShowCheckedModeBanner: false,
              home: const SplashScreen(),
            );
          },
        ));
  }
}
