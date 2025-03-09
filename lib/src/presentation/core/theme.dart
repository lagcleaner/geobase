import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

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
  headlineLarge: titleTextStyle.copyWith(fontSize: 24),
  headlineMedium: titleTextStyle.copyWith(fontSize: 22),
  headlineSmall: titleTextStyle.copyWith(fontSize: 20),
  titleLarge: titleTextStyle.copyWith(fontSize: 17),
  titleMedium: titleTextStyle.copyWith(fontSize: 16),
  titleSmall: titleTextStyle.copyWith(fontSize: 15),
  bodyLarge: bodyTextStyle.copyWith(fontSize: 18),
  bodyMedium: bodyTextStyle.copyWith(fontSize: 15),
  bodySmall: bodyTextStyle,
);

final TextTheme primaryTextTheme = textTheme.copyWith(
  headlineLarge: titleTextStyle.copyWith(color: Colors.white),
  headlineMedium: titleTextStyle.copyWith(color: Colors.white),
  headlineSmall: titleTextStyle.copyWith(color: Colors.white),
  titleLarge: titleTextStyle.copyWith(color: Colors.white),
  titleMedium: titleTextStyle.copyWith(color: Colors.white),
  titleSmall: bodyTextStyle.copyWith(color: Colors.white),
  bodyLarge: bodyTextStyle.copyWith(color: Colors.white),
  bodyMedium: bodyTextStyle.copyWith(color: Colors.white),
  bodySmall: bodyTextStyle.copyWith(color: Colors.white),
);

final ThemeData geobaseLightTheme = light.copyWith(
  dialogTheme: light.dialogTheme.copyWith(
    backgroundColor: backgroundColor,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
    titleTextStyle: textTheme.headlineSmall,
    contentTextStyle: textTheme.titleLarge,
  ),
  progressIndicatorTheme: light.progressIndicatorTheme.copyWith(),
  checkboxTheme: light.checkboxTheme.copyWith(
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
    fillColor: WidgetStateProperty.all(primaryBrandColor),
    materialTapTargetSize: MaterialTapTargetSize.padded,
  ),
  radioTheme: light.radioTheme.copyWith(
    fillColor: WidgetStateProperty.all(primaryBrandColor),
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
  // backgroundColor: backgroundColor,

  buttonTheme: light.buttonTheme.copyWith(
    buttonColor: primaryBrandColor,
    textTheme: ButtonTextTheme.primary,
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.all(Radius.circular(50)),
    ),
  ),
  textTheme: textTheme,
  primaryTextTheme: primaryTextTheme,
  // ignore: deprecated_member_use
  // accentTextTheme: primaryTextTheme,
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
      borderSide: BorderSide(color: light.colorScheme.secondary, width: 2.0),
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
        color: light.colorScheme.error,
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
    systemOverlayStyle: SystemUiOverlayStyle.light,
    foregroundColor: backgroundColor,
    iconTheme: light.iconTheme.copyWith(
      color: backgroundColor,
    ),
    actionsIconTheme: light.iconTheme.copyWith(
      color: backgroundColor,
    ),
  ),
  outlinedButtonTheme: OutlinedButtonThemeData(
    style: light.outlinedButtonTheme.style?.copyWith(
      shape: WidgetStateProperty.all<RoundedRectangleBorder>(
        RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(18.0),
          side: const BorderSide(color: primaryBrandColor),
        ),
      ),
      textStyle: WidgetStateProperty.all<TextStyle>(
        bodyTextStyle.copyWith(
          color: light.colorScheme.surface,
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
      shape: WidgetStateProperty.all<RoundedRectangleBorder>(
        RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(18.0),
          side: BorderSide(color: light.primaryColor),
        ),
      ),
      foregroundColor: WidgetStateProperty.all<Color>(Colors.white70),
      backgroundColor: WidgetStateProperty.all<Color>(primaryBrandColor),
      textStyle: WidgetStateProperty.all<TextStyle>(
        bodyTextStyle.copyWith(
          color: light.colorScheme.surface,
          fontWeight: FontWeight.w700,
        ),
      ),
    ),
  ),
);
