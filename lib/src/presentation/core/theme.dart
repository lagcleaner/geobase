import 'package:flutter/material.dart';

//general
const primaryBrandColor = Color(0xff09b57c);
const secondaryBrandColor = Color(0xffabc914);
const highlightColor = Color(0xff066656);
const alternativeHighlightColor = Color(0xff819413);
//per texts
const titlesAndParagraphsColor = Color(0xff5d5d5d);
const subtitlesColor = Color(0xffa1a1a1);
const linesColor = Color(0xffdfe1e1);
//per background
const backgroundColor = Color(0xffcdd8d0);
const backgroundAccentColor = Color(0xffffffff);
const backgroundCategoriesColor = Color(0xfff8f4f3);
const backgroundSecundaryColor = Color(0xfff2fff6);

final ThemeData light = ThemeData.light();

const TextStyle titleTextStyle = TextStyle(
    fontFamily: 'Aller',
    color: titlesAndParagraphsColor,
    fontWeight: FontWeight.bold);

const TextStyle bodyTextStyle = TextStyle(color: subtitlesColor);

final TextTheme textTheme = light.textTheme.copyWith(
    headline4: titleTextStyle.copyWith(fontSize: 24),
    headline5: titleTextStyle.copyWith(fontSize: 22),
    headline6: titleTextStyle.copyWith(fontSize: 20),
    subtitle1: titleTextStyle.copyWith(fontSize: 17),
    subtitle2: titleTextStyle.copyWith(fontSize: 16),
    bodyText1: bodyTextStyle.copyWith(fontSize: 18),
    bodyText2: bodyTextStyle.copyWith(fontSize: 15),
    button: bodyTextStyle);

final TextTheme primaryTextTheme = textTheme.copyWith(
    headline4: titleTextStyle.copyWith(color: Colors.white),
    headline5: titleTextStyle.copyWith(color: Colors.white),
    headline6: titleTextStyle.copyWith(color: Colors.white),
    subtitle1: titleTextStyle.copyWith(color: Colors.white),
    subtitle2: titleTextStyle.copyWith(color: Colors.white),
    bodyText1: bodyTextStyle.copyWith(color: Colors.white),
    bodyText2: bodyTextStyle.copyWith(color: Colors.white),
    button: bodyTextStyle.copyWith(color: Colors.white));

final ThemeData geobaseLightTheme = light.copyWith(
    dividerTheme: light.dividerTheme.copyWith(
      color: Colors.black,
      space: 5,
      thickness: 0,
    ),
    primaryColor: primaryBrandColor,
    accentColor: secondaryBrandColor,
    highlightColor: highlightColor,
    scaffoldBackgroundColor: backgroundColor,
    canvasColor: backgroundColor,
    backgroundColor: backgroundColor,
    buttonTheme: light.buttonTheme.copyWith(
        buttonColor: primaryBrandColor,
        textTheme: ButtonTextTheme.primary,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(50)),
        )),
    textTheme: textTheme,
    primaryTextTheme: primaryTextTheme,
    accentTextTheme: primaryTextTheme,
    iconTheme: light.iconTheme.copyWith(
      color: primaryBrandColor,
    ),
    inputDecorationTheme: light.inputDecorationTheme.copyWith(
      filled: true,
      fillColor: light.cardColor,
      focusColor: secondaryBrandColor,
      focusedBorder: const OutlineInputBorder(
        borderSide: BorderSide(
          color: secondaryBrandColor,
        ),
      ),
      enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(
          color: light.disabledColor,
        ),
      ),
    ),
    appBarTheme: light.appBarTheme.copyWith(
      color: backgroundColor,
      shadowColor: Colors.transparent,
      brightness: Brightness.light,
      iconTheme: light.iconTheme.copyWith(
        color: primaryBrandColor,
      ),
    ));
