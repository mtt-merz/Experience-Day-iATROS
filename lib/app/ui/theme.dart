import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

const _borderRadius = 2.3 * 2;
const _primaryColor = Color(0xff01aeef);

ThemeData get customThemeData => ThemeData(
      appBarTheme: _appBarTheme,
      cardTheme: _cardTheme,
      dividerTheme: _dividerTheme,
      elevatedButtonTheme: _elevatedButtonTheme,
      listTileTheme: _listTileTheme,
      primaryColor: _primaryColor,
      scaffoldBackgroundColor: Colors.grey.shade200,
      shadowColor: Colors.grey.withOpacity(.1),
      textTheme: _textTheme,
    );

final _appBarTheme = AppBarTheme(
    titleTextStyle: _textTheme.headlineSmall,
    centerTitle: true,
    backgroundColor: Colors.white,
    elevation: 0,
    iconTheme: const IconThemeData(color: Colors.grey));

final _cardTheme = CardTheme(
  elevation: 5,
  margin:
      const EdgeInsets.symmetric(horizontal: 2.7 * 2).copyWith(bottom: 2.7 * 2),
  shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(_borderRadius)),
);

const _dividerTheme = DividerThemeData(color: Colors.grey);

final _elevatedButtonTheme = ElevatedButtonThemeData(
  style: ButtonStyle(
      backgroundColor: const MaterialStatePropertyAll(_primaryColor),
      minimumSize: const MaterialStatePropertyAll(Size(200, 16 * 2)),
      shape: MaterialStatePropertyAll(RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(_borderRadius)))),
);

const _listTileTheme = ListTileThemeData(
  minVerticalPadding: 5.3 * 2,
);

final _textTheme = TextTheme(
  // Home screen Section title
  headlineMedium: GoogleFonts.montserrat(
      fontSize: 24, fontWeight: FontWeight.bold, color: Colors.black87),

  // AppBar title
  headlineSmall: GoogleFonts.montserrat(
      fontSize: 20, fontWeight: FontWeight.w600, color: Colors.black87),

  bodyLarge: GoogleFonts.montserrat(fontSize: 30),
  // ListTile subtitle
  bodyMedium: GoogleFonts.montserrat(fontSize: 14),

  // ListTile title
  titleMedium:
      GoogleFonts.montserrat(fontSize: 20, fontWeight: FontWeight.w600),

  labelLarge: GoogleFonts.montserrat(fontSize: 30),
  labelMedium: GoogleFonts.montserrat(fontSize: 30),
  labelSmall: GoogleFonts.montserrat(fontSize: 30),
);
