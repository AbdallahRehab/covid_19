import 'package:covid19/datasorce.dart';
import 'package:covid19/homepage.dart';
import 'package:dynamic_theme/dynamic_theme.dart';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DynamicTheme(
      data: (brightness) {
        return ThemeData(
          primaryColor: primaryBlack,
          brightness: brightness == Brightness.dark
              ? Brightness.light
              : Brightness.dark,
          scaffoldBackgroundColor: brightness == Brightness.dark
              ? Colors.blueGrey[900]
              : Colors.white,
        );
      },
      themedWidgetBuilder: (context, theme) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: theme,
          home: HomePage(),
        );
      },
    );
  }
}
