import 'package:petbi/utilities/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme {
  static themeData(BuildContext context) {
    return ThemeData(
        // brightness: Brightness.dark,

        errorColor: errorColor,
        appBarTheme: const AppBarTheme(
            backgroundColor: scafoldColor,
            elevation: 0,
            // color: Colors.white,
            // titleSpacing: -10,
            titleTextStyle: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.w700,
              color: textColor,
            ),
            centerTitle: false,
            iconTheme: IconThemeData(
              color: Color(0xff091118),
            )),
        dividerTheme:
            const DividerThemeData(thickness: .8, color: Color(0xffE1E2E2)),
        // textSelectionTheme: const TextSelectionThemeData(
        //     cursorColor: Colors.black, selectionColor: Colors.black),
        textTheme: GoogleFonts.dmSansTextTheme(),
        scaffoldBackgroundColor: scafoldColor,
        primaryColor: primaryColor,
        primarySwatch: MaterialColor(primaryColor.value, primarySwatch),
        colorScheme: ColorScheme.fromSwatch(
                primarySwatch: MaterialColor(primaryColor.value, primarySwatch))
            .copyWith(secondary: secondaryColor));
  }
}
