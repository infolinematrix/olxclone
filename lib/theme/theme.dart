import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'index.dart';

class Style {
  static const PageTransitionsTheme _pageTransitionsTheme =
      PageTransitionsTheme(
    builders: <TargetPlatform, PageTransitionsBuilder>{
      TargetPlatform.android: ZoomPageTransitionsBuilder(),
      TargetPlatform.iOS: CupertinoPageTransitionsBuilder(),
    },
  );

  static final ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
    backgroundColor: Color.fromARGB(255, 255, 255, 255),
    scaffoldBackgroundColor: Color.fromARGB(255, 250, 250, 250),
    primaryColor: ThemeColors.primaryColor,
    appBarTheme: const AppBarTheme(
        elevation: 1,
        color: Color.fromARGB(255, 255, 255, 255),
        centerTitle: true,
        titleTextStyle: TextStyle(
          color: Color.fromARGB(255, 0, 0, 0),
          fontSize: 18,
          fontWeight: FontWeight.w500,
        ),
        iconTheme: IconThemeData(color: Colors.black)),
    // inputDecorationTheme: InputDecorationTheme(
    //   focusColor: Colors.grey,
    //   fillColor: Colors.grey.shade100,
    //   filled: true,
    //   labelStyle: TextStyle(
    //     color: Colors.black54,
    //   ),
    //   floatingLabelStyle: TextStyle(fontWeight: FontWeight.bold),
    // ),
    inputDecorationTheme: InputDecorationTheme(
      focusColor: ThemeColors.borderColorEnable,
      fillColor: Color.fromARGB(255, 255, 254, 254),
      filled: true,
      labelStyle: TextStyle(
        color: Colors.black54,
      ),
      floatingLabelStyle: TextStyle(fontWeight: FontWeight.bold),
      enabledBorder: OutlineInputBorder(
        borderSide:
            BorderSide(color: ThemeColors.borderColorEnable, width: 1.0),
      ),
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(
          color: ThemeColors.borderColorEnable,
          width: 2.0,
        ),
      ),
    ),
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      elevation: 2,
      showSelectedLabels: true,
      showUnselectedLabels: true,
      backgroundColor: ThemeColors.bottomNavigationBarBackgroundColor,
      selectedItemColor: ThemeColors.selectedItemColor,
      unselectedItemColor: ThemeColors.unselectedItemColor,
      selectedIconTheme: IconThemeData(
        size: 26,
      ),
      unselectedIconTheme: IconThemeData(
        size: 22,
      ),
      selectedLabelStyle:
          TextStyle(fontSize: 13.5, overflow: TextOverflow.ellipsis),
      unselectedLabelStyle:
          TextStyle(fontSize: 11.5, overflow: TextOverflow.ellipsis),
      type: BottomNavigationBarType.fixed,
    ),
    colorScheme: ColorScheme.fromSwatch(
      brightness: Brightness.light,
      accentColor: ThemeColors.secondaryColor,
      errorColor: ThemeColors.errorColor,
    ),
    pageTransitionsTheme: _pageTransitionsTheme,
    textTheme: GoogleFonts.montserratTextTheme(
      ThemeData.light().textTheme.copyWith(
            subtitle2: GoogleFonts.montserrat(
              fontSize: 16,
              fontWeight: FontWeight.w500,
              color: Colors.black,
            ),
            headline6: GoogleFonts.montserrat(
              fontSize: 18,
              fontWeight: FontWeight.w500,
              color: Colors.black,
            ),
          ),
    ),
    buttonTheme: ButtonThemeData(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
    ),
    popupMenuTheme: PopupMenuThemeData(
      color: ThemeColors.primaryColor,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
    ),
  );

  static final ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    backgroundColor: ThemeColors.backgroundColorDark,
    scaffoldBackgroundColor: ThemeColors.scaffoldBackgroundColorDark,
    primaryColor: ThemeColors.primaryColorDark,
    appBarTheme: const AppBarTheme(
      color: ThemeColors.appBarColorDark,
      centerTitle: true,
      titleTextStyle: TextStyle(
        color: Colors.white,
        fontSize: 16,
        fontWeight: FontWeight.w500,
      ),
    ),
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      showSelectedLabels: true,
      showUnselectedLabels: true,
      selectedItemColor: ThemeColors.selectedItemColor,
      unselectedItemColor: ThemeColors.unselectedItemColor,
      selectedLabelStyle:
          TextStyle(fontSize: 13, overflow: TextOverflow.ellipsis),
      unselectedLabelStyle:
          TextStyle(fontSize: 11, overflow: TextOverflow.ellipsis),
    ),
    colorScheme: ColorScheme.fromSwatch(
      brightness: Brightness.dark,
      accentColor: ThemeColors.secondaryColorDark,
      errorColor: ThemeColors.errorColor,
    ),
    pageTransitionsTheme: _pageTransitionsTheme,
    textTheme: GoogleFonts.rubikTextTheme(
      ThemeData.dark().textTheme.copyWith(),
    ),
    buttonTheme: ButtonThemeData(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
    ),
    popupMenuTheme: PopupMenuThemeData(
      color: ThemeColors.primaryColor,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
    ),
  );

  static final ThemeData blackTheme = ThemeData(
    brightness: Brightness.dark,
    backgroundColor: ThemeColors.backgroundColorDark,
    scaffoldBackgroundColor: ThemeColors.scaffoldBackgroundColorDark,
    primaryColor: ThemeColors.primaryColorDark,
    appBarTheme: const AppBarTheme(
      color: ThemeColors.appBarColorDark,
      centerTitle: true,
      titleTextStyle: TextStyle(
        color: Colors.white,
        fontSize: 16,
        fontWeight: FontWeight.w500,
      ),
    ),
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      showSelectedLabels: true,
      showUnselectedLabels: true,
      selectedItemColor: ThemeColors.selectedItemColor,
      unselectedItemColor: ThemeColors.unselectedItemColor,
      selectedLabelStyle:
          TextStyle(fontSize: 13, overflow: TextOverflow.ellipsis),
      unselectedLabelStyle:
          TextStyle(fontSize: 11, overflow: TextOverflow.ellipsis),
    ),
    colorScheme: ColorScheme.fromSwatch(
      brightness: Brightness.dark,
      accentColor: ThemeColors.secondaryColorDark,
      errorColor: ThemeColors.errorColor,
    ),
    pageTransitionsTheme: _pageTransitionsTheme,
    textTheme: GoogleFonts.rubikTextTheme(
      ThemeData.dark().textTheme.copyWith(),
    ),
    buttonTheme: ButtonThemeData(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
    ),
    popupMenuTheme: PopupMenuThemeData(
      color: ThemeColors.primaryColor,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
    ),
  );
}
