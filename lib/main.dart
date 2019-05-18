import 'package:flutter/material.dart';
import 'package:flutter_onboarding_app_ui_design/screens/onboarding/onboarding.dart';
import 'package:flutter_onboarding_app_ui_design/themes/styles.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'OnBoarding Demo',
      theme: appTheme(),
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Onboarding(),
    );
  }
}
