import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_messenger/theme.dart';
import 'package:flutter_app_messenger/views/sign_in.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return AdaptiveTheme(
      light: kLightTheme,
      dark: kDarkTheme,
      initial: AdaptiveThemeMode.dark,
      builder: (light, dark) => MaterialApp(
        theme: light,
        darkTheme: dark,
        title: 'Flutter Demo',
        home: SignIn(),
      ),
    );
  }
}
