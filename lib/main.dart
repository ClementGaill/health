import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:health/home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Custom Theme App',
      theme: _buildThemeData(),
      /* home: Scaffold(
        appBar: AppBar(
          title: Text('Custom Themed App'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {},
                child: Text('Primary Button'),
              ),
              SizedBox(height: 20),
              OutlinedButton(
                onPressed: () {},
                child: Text('Secondary Button'),
              ),
              SizedBox(height: 20),
              Text('This is a subtitle', style: Theme.of(context).textTheme.titleMedium),
              Text('This is a headline', style: Theme.of(context).textTheme.headlineSmall),
            ],
          ),
        ),
      ), */

      home: Home(),
    );
  }
}



// Couleurs principales et secondaires
const primaryColor = Color(0xFF1A73E8); // Bleu primaire
const secondaryColor = Color(0xFFE91E63); // Rose secondaire
const backgroundColor = Color(0xFFE8ECF1); // Blanc cassé légèrement teinté bleu
const blackColor = Color(0xFF0F0F0F); // Noir #0F0F0F
const errorColor = Color(0x00FF0000);

ThemeData _buildThemeData() {

  return ThemeData(
    // Définition des couleurs de base
    primaryColor: primaryColor,
    colorScheme: ColorScheme(
      primary: primaryColor,
      secondary: secondaryColor,
      background: backgroundColor,
      surface: Colors.white,
      onPrimary: Colors.white,
      onSecondary: Colors.white,
      onBackground: blackColor,
      onSurface: blackColor,
      onError: Colors.white,
      error: Colors.red,
      brightness: Brightness.light,
    ),
    scaffoldBackgroundColor: backgroundColor,

    // Définition des boutons
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: primaryColor,
        foregroundColor: Colors.white,
        textStyle: GoogleFonts.lato(
          fontSize: 16,
          fontWeight: FontWeight.bold,
        ),
      ),
    ),
    outlinedButtonTheme: OutlinedButtonThemeData(
      style: OutlinedButton.styleFrom(
        foregroundColor: primaryColor,
        side: BorderSide(color: primaryColor),
        textStyle: GoogleFonts.lato(
          fontSize: 16,
          fontWeight: FontWeight.bold,
        ),
      ),
    ),

    // Définition de la typographie générale en utilisant GoogleFonts
    textTheme: TextTheme(
      // Définitions des styles d'affichage
      displayLarge: GoogleFonts.lato(
        fontSize: 96,
        fontWeight: FontWeight.w300,
        letterSpacing: -1.5,
        color: blackColor,
      ),
      displayMedium: GoogleFonts.lato(
        fontSize: 60,
        fontWeight: FontWeight.w300,
        letterSpacing: -0.5,
        color: blackColor,
      ),
      displaySmall: GoogleFonts.lato(
        fontSize: 48,
        fontWeight: FontWeight.w400,
        letterSpacing: 0.0,
        color: blackColor,
      ),

      // Définitions des styles de titres
      headlineLarge: GoogleFonts.lato(
        fontSize: 34,
        fontWeight: FontWeight.w400,
        letterSpacing: 0.25,
        color: blackColor,
      ),
      headlineMedium: GoogleFonts.lato(
        fontSize: 24,
        fontWeight: FontWeight.w400,
        letterSpacing: 0.0,
        color: blackColor,
      ),
      headlineSmall: GoogleFonts.lato(
        fontSize: 20,
        fontWeight: FontWeight.w500,
        letterSpacing: 0.15,
        color: blackColor,
      ),

      // Définitions des styles de titres
      titleLarge: GoogleFonts.lato(
        fontSize: 16,
        fontWeight: FontWeight.w400,
        letterSpacing: 0.15,
        color: blackColor,
      ),
      titleMedium: GoogleFonts.lato(
        fontSize: 14,
        fontWeight: FontWeight.w500,
        letterSpacing: 0.1,
        color: blackColor,
      ),
      titleSmall: GoogleFonts.lato(
        fontSize: 12,
        fontWeight: FontWeight.w400,
        letterSpacing: 0.4,
        color: blackColor,
      ),

      // Définitions des styles de corps de texte
      bodyLarge: GoogleFonts.lato(
        fontSize: 16,
        fontWeight: FontWeight.w400,
        letterSpacing: 0.5,
        color: blackColor,
      ),
      bodyMedium: GoogleFonts.lato(
        fontSize: 14,
        fontWeight: FontWeight.w400,
        letterSpacing: 0.25,
        color: blackColor,
      ),
      bodySmall: GoogleFonts.lato(
        fontSize: 12,
        fontWeight: FontWeight.w400,
        letterSpacing: 0.4,
        color: blackColor,
      ),

      // Définitions des styles de labels
      labelLarge: GoogleFonts.lato(
        fontSize: 14,
        fontWeight: FontWeight.w500,
        letterSpacing: 1.25,
        color: blackColor,
      ),
      labelMedium: GoogleFonts.lato(
        fontSize: 12,
        fontWeight: FontWeight.w500,
        letterSpacing: 0.4,
        color: blackColor,
      ),
      labelSmall: GoogleFonts.lato(
        fontSize: 10,
        fontWeight: FontWeight.w400,
        letterSpacing: 1.5,
        color: blackColor,
      ),
    ),
  );
}
