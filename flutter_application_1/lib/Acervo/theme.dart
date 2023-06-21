import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'Cores.dart';

class ThemeApp {
  final themeDark = ThemeData(
    iconTheme: IconThemeData(size: 40),
    brightness: Brightness.dark,
    tabBarTheme: TabBarTheme(
        labelColor: ColorPalettey.primary,
        unselectedLabelColor: ColorPalettey.switch_,
        indicatorColor: ColorPalettey.primary),
    textTheme: TextTheme(
      titleMedium:
          GoogleFonts.creteRound(color: ColorPalettey.white, fontSize: 50),
      titleLarge: GoogleFonts.robotoSerif(fontSize: 25),
    ),
  );

  final themeLight = ThemeData(
    iconTheme: IconThemeData(size: 40),
    brightness: Brightness.light,
    appBarTheme: const AppBarTheme(color: ColorPalettey.primary),
    tabBarTheme: TabBarTheme(
        labelColor: ColorPalettey.primary,
        unselectedLabelColor: ColorPalettey.switch_,
        indicatorColor: ColorPalettey.primary),
    textTheme: TextTheme(
      titleMedium:
          GoogleFonts.creteRound(color: ColorPalettey.white, fontSize: 50),
      titleLarge:
          GoogleFonts.robotoSerif(fontSize: 25, color: ColorPalettey.white),
    ),
  );
}
