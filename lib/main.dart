import 'package:flutter/material.dart';

import 'package:sc_02/screens/home/home_screen.dart';
import 'package:sc_02/themes/app_theme.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppThemeData().theme,
      home: HomeScreen(),
    );
  }
}
