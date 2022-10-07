import 'package:experience_day_iatros/app/utils/size.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

final _borderRadius = Utils.transformSize(2.3);
const _primaryColor = Color(0xff01aeef);

ThemeData get customThemeData => ThemeData(
      appBarTheme: _appBarTheme,
      bottomNavigationBarTheme: _bottomNavigationBarTheme,
      cardTheme: _cardTheme,
      dialogTheme: _dialogTheme,
      dividerTheme: _dividerTheme,
      elevatedButtonTheme: _elevatedButtonTheme,
      listTileTheme: _listTileTheme,
      primaryColor: _primaryColor,
      scaffoldBackgroundColor: Colors.grey.shade100,
      shadowColor: Colors.grey.withOpacity(.1),
      textTheme: _textTheme,
      textButtonTheme: _textButtonTheme,
    );

final _appBarTheme = AppBarTheme(
    titleTextStyle: _textTheme.headlineSmall,
    centerTitle: true,
    backgroundColor: Colors.white,
    elevation: 0,
    iconTheme: const IconThemeData(color: Colors.grey));

const _bottomNavigationBarTheme = BottomNavigationBarThemeData(
  selectedItemColor: _primaryColor,
  unselectedItemColor: Colors.black38,
  showUnselectedLabels: true,
  showSelectedLabels: true,
);

final _cardTheme = CardTheme(
  elevation: 5,
  margin: EdgeInsets.symmetric(horizontal: Utils.transformSize(2.7))
      .copyWith(bottom: Utils.transformSize(2.7)),
  shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(_borderRadius)),
);

final _dialogTheme = DialogTheme(
  shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(_borderRadius)),
);

const _dividerTheme = DividerThemeData(color: Colors.grey);

final _elevatedButtonTheme = ElevatedButtonThemeData(
  style: ButtonStyle(
      backgroundColor: const MaterialStatePropertyAll(_primaryColor),
      minimumSize: MaterialStatePropertyAll(Size(200, Utils.transformSize(16))),
      shape: MaterialStatePropertyAll(RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(_borderRadius)))),
);

final _listTileTheme = ListTileThemeData(
  minVerticalPadding: Utils.transformSize(5.3),
);

final _textButtonTheme = TextButtonThemeData(
    style: ButtonStyle(
  textStyle: MaterialStatePropertyAll(GoogleFonts.montserrat(
      fontSize: Utils.transformFont(4.7),
      fontWeight: FontWeight.w500,
      color: _primaryColor)),
));

final _textTheme = TextTheme(
  // Home screen Section title
  headlineMedium: GoogleFonts.montserrat(
      fontSize: Utils.transformFont(6.7),
      fontWeight: FontWeight.bold,
      color: Colors.black87),

  // AppBar title
  headlineSmall: GoogleFonts.montserrat(
      fontSize: 20, fontWeight: FontWeight.w600, color: Colors.black87),

  // Task overview ListTile subtitle
  bodyLarge: GoogleFonts.montserrat(
      fontSize: Utils.transformFont(5.3), fontWeight: FontWeight.w500),
  // ListTile subtitle
  bodyMedium: GoogleFonts.montserrat(fontSize: 14),

  // ListTile title
  titleMedium: GoogleFonts.montserrat(
      fontSize: Utils.transformFont(5.3), fontWeight: FontWeight.w600),

  titleSmall: GoogleFonts.montserrat(
      fontSize: Utils.transformFont(4.7), fontWeight: FontWeight.w600),

  // Elevated button
  labelLarge: GoogleFonts.montserrat(
      fontSize: Utils.transformFont(5.3), fontWeight: FontWeight.bold),

  // Task overview ListTile subtitle
  labelMedium: GoogleFonts.montserrat(
      fontSize: Utils.transformFont(4.7),
      fontWeight: FontWeight.normal,
      color: Colors.grey),
);
