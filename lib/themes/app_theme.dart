import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppTheme extends InheritedWidget {
  const AppTheme({
    required this.data,
    required Widget child,
  }) : super(child: child);

  final AppThemeData data;

  @override
  bool updateShouldNotify(AppTheme oldWidget) => data != oldWidget.data;

  static AppThemeData of(BuildContext context) {
    final AppTheme? theme = context.dependOnInheritedWidgetOfExactType();
    return theme?.data ?? AppThemeData();
  }
}

class AppThemeData {
  ThemeData get theme => ThemeData(
        fontFamily: 'Roboto',
        accentColor: violet700,
        // Define the default TextTheme. Use this to specify the default
        // text styling for headlines, titles, bodies of text, and more.
        textTheme: TextTheme(
          headline3: TextStyle(fontSize: 48.0),
          headline4: TextStyle(
            fontSize: 34.0,
            letterSpacing: 0.25,
          ),
          headline5: TextStyle(fontSize: 24.0),
          headline6: TextStyle(
            fontSize: 20.0,
            fontWeight: FontWeight.w500,
            letterSpacing: 0.15,
          ),
          subtitle1: TextStyle(
            fontSize: 16.0,
            letterSpacing: 0.15,
          ),
          subtitle2: TextStyle(
            fontSize: 14.0,
            fontWeight: FontWeight.w500,
            letterSpacing: 0.1,
          ),
          button: TextStyle(
            fontSize: 14.0,
            fontWeight: FontWeight.w500,
            letterSpacing: 1.5,
          ),
          // body1 is deprecated
          bodyText2: TextStyle(
            fontSize: 16.0,
            letterSpacing: 0.444444,
          ),
          // body2 also deprecated
          bodyText1: TextStyle(
            fontSize: 14.0,
            letterSpacing: 0.25,
          ),
          caption: TextStyle(
            fontSize: 12.0,
            letterSpacing: 0.5,
          ),
          overline: TextStyle(
            fontSize: 10.0,
            fontWeight: FontWeight.w500,
            letterSpacing: 1.5,
          ),
        ),
      );

  static const Color violet700 = Color(0xFF6200EE);
  static const Color violet500 = Color(0xFF3700B3);
  static const Color violet200 = Color(0xFFBA86FC);
  static const Color teal200 = Color(0xFF03DAC6);
  static const Color red700 = Color(0xFFB00020);
  static const Color red200 = Color(0xFFCF6679);
  static const Color white = Color(0xFFFFFFFF);
  static const Color gray200 = Color(0xFFF5F5F5);
  static const Color gray300 = Color(0xFFE0E0E0);
  static const Color gray600 = Color(0xFF666666);
  static const Color black26 = Colors.black26;
  static const Color gray900 = Color(0xFF121212);
  static const Color black = Color(0xFF000000);

  static const Color chipBackColor = Color(0xFFF2E7FE);
  static const Color transparentColor = Colors.transparent;

  ButtonStyle get appElevatedButtonStyle => ButtonStyle(
        backgroundColor: MaterialStateProperty.all(violet700),
        padding: MaterialStateProperty.all(EdgeInsets.symmetric(vertical: 10)),
        textStyle: MaterialStateProperty.all(
          theme.textTheme.button,
        ),
      );
}
