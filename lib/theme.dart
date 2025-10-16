import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// Color palette from user
const Color color1 = Color(0xFFEBEAEB); // Light Gray
const Color color2 = Color(0xFFA1938C); // Muted Brown-Gray
const Color color3 = Color(0xFF5D5756); // Dark Brown-Gray
const Color color4 = Color(0xFF821719); // Deep Red (Primary Seed)
const Color color5 = Color(0xFF2B292E); // Very Dark Gray

// Define a common TextTheme
final TextTheme appTextTheme = TextTheme(
  displayLarge: GoogleFonts.oswald(fontSize: 57, fontWeight: FontWeight.bold, color: color5),
  displayMedium: GoogleFonts.oswald(fontSize: 45, fontWeight: FontWeight.bold, color: color5),
  displaySmall: GoogleFonts.oswald(fontSize: 36, fontWeight: FontWeight.bold, color: color5),
  headlineLarge: GoogleFonts.roboto(fontSize: 32, fontWeight: FontWeight.w500, color: color5),
  headlineMedium: GoogleFonts.roboto(fontSize: 28, fontWeight: FontWeight.w500, color: color5),
  headlineSmall: GoogleFonts.roboto(fontSize: 24, fontWeight: FontWeight.w500, color: color5),
  titleLarge: GoogleFonts.roboto(fontSize: 22, fontWeight: FontWeight.w500, color: color5),
  titleMedium: GoogleFonts.openSans(fontSize: 16, fontWeight: FontWeight.w500, letterSpacing: 0.15),
  titleSmall: GoogleFonts.openSans(fontSize: 14, fontWeight: FontWeight.w500, letterSpacing: 0.1),
  bodyLarge: GoogleFonts.openSans(fontSize: 16, fontWeight: FontWeight.normal, letterSpacing: 0.5),
  bodyMedium: GoogleFonts.openSans(fontSize: 14, fontWeight: FontWeight.normal, letterSpacing: 0.25),
  bodySmall: GoogleFonts.openSans(fontSize: 12, fontWeight: FontWeight.normal, letterSpacing: 0.4),
  labelLarge: GoogleFonts.roboto(fontSize: 14, fontWeight: FontWeight.w500, letterSpacing: 1.25),
  labelMedium: GoogleFonts.roboto(fontSize: 12, fontWeight: FontWeight.w500, letterSpacing: 1.25),
  labelSmall: GoogleFonts.roboto(fontSize: 10, fontWeight: FontWeight.w500, letterSpacing: 1.5),
);

// Light Theme
final ThemeData lightTheme = ThemeData(
  useMaterial3: true,
  colorScheme: ColorScheme.fromSeed(
    seedColor: color4,
    brightness: Brightness.light,
    background: color1,
    surface: color1,
    onBackground: color5,
    onSurface: color5,
  ),
  scaffoldBackgroundColor: color1,
  textTheme: appTextTheme,
  appBarTheme: AppBarTheme(
    backgroundColor: color4,
    foregroundColor: color1,
    titleTextStyle: GoogleFonts.oswald(fontSize: 24, fontWeight: FontWeight.bold),
  ),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      foregroundColor: color1,
      backgroundColor: color4,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
      textStyle: GoogleFonts.roboto(fontSize: 16, fontWeight: FontWeight.w500),
    ),
  ),
);

// Dark Theme
final ThemeData darkTheme = ThemeData(
  useMaterial3: true,
  colorScheme: ColorScheme.fromSeed(
    seedColor: color4,
    brightness: Brightness.dark,
    background: color5,
    surface: color5,
    onBackground: color1,
    onSurface: color1,
  ),
    scaffoldBackgroundColor: color5,
  textTheme: appTextTheme.apply(
    bodyColor: color1,
    displayColor: color1,
  ),
  appBarTheme: AppBarTheme(
    backgroundColor: color3,
    foregroundColor: color1,
    titleTextStyle: GoogleFonts.oswald(fontSize: 24, fontWeight: FontWeight.bold, color: color1),
  ),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      foregroundColor: color5,
      backgroundColor: color2,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
      textStyle: GoogleFonts.roboto(fontSize: 16, fontWeight: FontWeight.w500),
    ),
  ),
);
