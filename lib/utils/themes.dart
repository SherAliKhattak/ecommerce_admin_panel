// ignore_for_file: deprecated_member_use
import 'package:ecommerce_admin_panel/utils/style.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

const Color kwhiteColor = Colors.white;
const Color kgreenAccent = Colors.greenAccent;
const Color kborderColor = Color(0xFFF3F4F9);
const Color kprimary = Color(0xFF038D4C);
const Color kgreenColor = Color(0xFF2FD573);
const Color korangeColor = Color(0xFFFFBE21);
const Color klightblue = Color(0xFFEAFBFF);
const Color klightorange = Color(0xFFFFF7E7);
const Color klightgreen = Color(0xFFEAFDF6);
const Color klightred = Color(0xFFFFF2F2);
const Color kblueColor = Color(0xFF16ABCB);
const Color kredColor = Color(0xFFFF6D6D);
const Color kgreycontainer = Color(0xFFF8F8F8);
const Color kdarkgrey = Color(0xFFE7E8EC);
const Color kblackColor = Color(0xFF000000);

ThemeData lightTheme = ThemeData(
  useMaterial3: true,
  fontFamily: GoogleFonts.nunito().fontFamily,
  primaryColor: kprimary,
  secondaryHeaderColor: const Color(0xFFF8F9FB),
  disabledColor: const Color(0xFFBABFC4),
  scaffoldBackgroundColor: const Color(0xFFFFFFFF),
  brightness: Brightness.light,
  hintColor: const Color(0xFF9F9F9F),
  cardColor: const Color(0xFFF7F7F7),
  // textButtonTheme: TextButtonThemeData(
  //     style: TextButton.styleFrom(foregroundColor: kprimary)),
  // colorScheme: const ColorScheme.light(primary: kprimary, secondary: kprimary)
  //     .copyWith(
  //         background: const Color(0xFFFFFFFF),
  //         error: const Color(0xFFdd3135),
  //         outline: const Color(0xFFF4F4F4)),
  textTheme: const TextTheme(
    bodyLarge: TextStyle(fontSize: 24, fontWeight: FontWeight.w600),
    bodyMedium: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
    bodySmall: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
  ),
  appBarTheme: const AppBarTheme(
    elevation: 0,
    titleSpacing: 20,
    color: Color(0xFFFFFFFF),
    iconTheme: IconThemeData(color: Color(0xFF9F9F9F)),
    titleTextStyle: TextStyle(
        color: Color(0xFF000000),
        fontSize: 20,
        fontWeight: fontWeightSemiBold,
        fontFamily: 'poppins'),
  ),
);

ThemeData darkTheme = ThemeData(
  useMaterial3: true,
  fontFamily: GoogleFonts.nunito().fontFamily,
  primaryColor: kprimary,
  secondaryHeaderColor: const Color(0xFF009f67),
  disabledColor: const Color(0xffa2a7ad),
  scaffoldBackgroundColor: const Color(0xFF252525),
  brightness: Brightness.dark,
  hintColor: const Color(0xFFbebebe),
  cardColor: const Color.fromARGB(255, 38, 39, 40),
  textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(foregroundColor: kprimary)),
  colorScheme: const ColorScheme.dark(primary: kprimary, secondary: kprimary)
      .copyWith(
          background: const Color(0xFF1A1D1F),
          error: const Color(0xFFdd3135),
          outline: const Color(0xFF2C2C2C)),
  textTheme: const TextTheme(
    bodyLarge: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
    bodyMedium: TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
    bodySmall: TextStyle(fontSize: 12, fontWeight: FontWeight.w600),
  ),
  appBarTheme: const AppBarTheme(
    elevation: 0,
    titleSpacing: 20,
    color: Color(0xFF1A1D1F),
    iconTheme: IconThemeData(color: Color(0xFFbebebe)),
    titleTextStyle: TextStyle(
        fontSize: 20, fontWeight: fontWeightSemiBold, fontFamily: 'poppins'),
  ),
);
