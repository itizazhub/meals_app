import 'package:meals_app/screens/categories_screen.dart';
import 'package:meals_app/screens/tabs_screen.dart';

import 'package:flutter/material.dart';

import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() {
  runApp(
    ProviderScope(child: MealsApp()),
  );
}

class MealsApp extends StatelessWidget {
  MealsApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // theme: ThemeData(
      //   scaffoldBackgroundColor: const Color.fromARGB(255, 250, 232, 224),
      //   appBarTheme: AppBarTheme(
      //     backgroundColor: const Color.fromARGB(255, 250, 232, 224),
      //   ),
      //   bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      //     backgroundColor: Color.fromARGB(255, 255, 255, 255),
      //     selectedIconTheme: IconThemeData(
      //       color: Color.fromARGB(255, 177, 212, 224),
      //     ),
      //     selectedItemColor: Color.fromARGB(255, 177, 212, 224),
      //     unselectedIconTheme: IconThemeData(
      //       color: Color.fromARGB(255, 255, 166, 76),
      //     ),
      //     unselectedItemColor: Color.fromARGB(255, 255, 166, 76),
      //   ),
      //   primaryColor: const Color.fromARGB(255, 207, 100, 37),
      // ),
      home: TabsScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
