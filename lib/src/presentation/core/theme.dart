import 'package:flutter/material.dart';

//general
const primaryBrandColor = Color(0xFF64818F);
const secondaryBrandColor = Color(0xff386db9);
const highlightColor = Color(0xff90e2f5);
const alternativeHighlightColor = Color(0xff89aee4);
//per texts
const titlesAndParagraphsColor = Color(0xff5d6f6f);
const subtitlesColor = Color(0xffa1b5b5);
const linesColor = Color(0xffdff1f1);
//per background
const backgroundColor = Color(0xfffbffff);
const backgroundAccentColor = Color(0xffffffff);
const backgroundCategoriesColor = Color(0xfff8f5f5);
const backgroundSecundaryColor = Color(0xfff1fff8);

final ThemeData light = ThemeData.light();

const TextStyle titleTextStyle = TextStyle(
  fontFamily: 'Aller',
  color: titlesAndParagraphsColor,
  fontWeight: FontWeight.bold,
);

const TextStyle bodyTextStyle = TextStyle(color: subtitlesColor);

final TextTheme textTheme = light.textTheme.copyWith(
  headline4: titleTextStyle.copyWith(fontSize: 24),
  headline5: titleTextStyle.copyWith(fontSize: 22),
  headline6: titleTextStyle.copyWith(fontSize: 20),
  subtitle1: titleTextStyle.copyWith(fontSize: 17),
  subtitle2: titleTextStyle.copyWith(fontSize: 16),
  bodyText1: bodyTextStyle.copyWith(fontSize: 18),
  bodyText2: bodyTextStyle.copyWith(fontSize: 15),
  button: bodyTextStyle,
);

final TextTheme primaryTextTheme = textTheme.copyWith(
  headline4: titleTextStyle.copyWith(color: Colors.white),
  headline5: titleTextStyle.copyWith(color: Colors.white),
  headline6: titleTextStyle.copyWith(color: Colors.white),
  subtitle1: titleTextStyle.copyWith(color: Colors.white),
  subtitle2: titleTextStyle.copyWith(color: Colors.white),
  bodyText1: bodyTextStyle.copyWith(color: Colors.white),
  bodyText2: bodyTextStyle.copyWith(color: Colors.white),
  button: bodyTextStyle.copyWith(color: Colors.white),
);

final ThemeData geobaseLightTheme = light.copyWith(
  dialogTheme: light.dialogTheme.copyWith(
    backgroundColor: backgroundColor,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
    titleTextStyle: textTheme.headline6,
    contentTextStyle: textTheme.subtitle1,
  ),
  progressIndicatorTheme: light.progressIndicatorTheme.copyWith(),
  checkboxTheme: light.checkboxTheme.copyWith(
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
    fillColor: MaterialStateProperty.all(primaryBrandColor),
    materialTapTargetSize: MaterialTapTargetSize.padded,
  ),
  dividerTheme: light.dividerTheme.copyWith(
    color: primaryBrandColor,
    space: 5,
    thickness: 0,
  ),
  floatingActionButtonTheme: FloatingActionButtonThemeData(
    backgroundColor: primaryBrandColor.withBlue(0x70),
  ),
  primaryColor: primaryBrandColor,

  // accentColor: secondaryBrandColor,
  highlightColor: highlightColor,
  scaffoldBackgroundColor: backgroundColor,
  canvasColor: backgroundColor,
  backgroundColor: backgroundColor,

  buttonTheme: light.buttonTheme.copyWith(
    buttonColor: primaryBrandColor,
    textTheme: ButtonTextTheme.primary,
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.all(Radius.circular(50)),
    ),
  ),
  textTheme: textTheme,
  primaryTextTheme: primaryTextTheme,
  accentTextTheme: primaryTextTheme,
  iconTheme: light.iconTheme.copyWith(
    color: primaryBrandColor,
  ),
  primaryIconTheme: light.primaryIconTheme.copyWith(
    color: primaryBrandColor,
    size: 25,
  ),
  inputDecorationTheme: light.inputDecorationTheme.copyWith(
    filled: true,
    fillColor: light.cardColor,
    focusColor: secondaryBrandColor,
    border: OutlineInputBorder(
      borderSide: BorderSide(
        color: light.primaryColor,
      ),
      borderRadius: const BorderRadius.all(Radius.circular(18)),
    ),
    focusedBorder: OutlineInputBorder(
      borderSide: BorderSide(color: light.accentColor, width: 2.0),
      borderRadius: const BorderRadius.all(Radius.circular(18)),
    ),
    enabledBorder: OutlineInputBorder(
      borderSide: BorderSide(
        color: light.primaryColor,
      ),
      borderRadius: const BorderRadius.all(Radius.circular(18)),
    ),
    errorBorder: OutlineInputBorder(
      borderSide: BorderSide(
        color: light.errorColor,
      ),
      borderRadius: const BorderRadius.all(Radius.circular(18)),
    ),
    disabledBorder: OutlineInputBorder(
      borderSide: BorderSide(
        color: light.disabledColor,
      ),
      borderRadius: const BorderRadius.all(Radius.circular(18)),
    ),
  ),
  appBarTheme: light.appBarTheme.copyWith(
    backgroundColor: primaryBrandColor,
    elevation: 0,
    brightness: Brightness.light,
    iconTheme: light.iconTheme.copyWith(
      color: primaryBrandColor,
    ),
  ),
  outlinedButtonTheme: OutlinedButtonThemeData(
    style: light.outlinedButtonTheme.style?.copyWith(
      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
        RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(18.0),
          side: const BorderSide(color: primaryBrandColor),
        ),
      ),
      textStyle: MaterialStateProperty.all<TextStyle>(
        bodyTextStyle.copyWith(
          color: light.backgroundColor,
          fontWeight: FontWeight.w700,
        ),
      ),
    ),
  ),
  // buttonColor: primaryBrandColor,
  //   textTheme: ButtonTextTheme.primary,
  //   shape: const RoundedRectangleBorder(
  //     borderRadius: BorderRadius.all(Radius.circular(50)),
  //   ),
  // ),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: light.elevatedButtonTheme.style?.copyWith(
      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
        RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(18.0),
          side: BorderSide(color: light.primaryColor),
        ),
      ),
      foregroundColor: MaterialStateProperty.all<Color>(Colors.white70),
      backgroundColor: MaterialStateProperty.all<Color>(primaryBrandColor),
      textStyle: MaterialStateProperty.all<TextStyle>(
        bodyTextStyle.copyWith(
          color: light.backgroundColor,
          fontWeight: FontWeight.w700,
        ),
      ),
    ),
  ),
);
