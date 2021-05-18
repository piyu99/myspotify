import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:neumorphism/screens/bottomSheet.dart';
import 'package:neumorphism/screens/glass.dart';
import 'package:neumorphism/screens/neuro.dart';
import 'package:neumorphism/utils/themes.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        debugShowCheckedModeBanner: false,
        theme: Themes().darkTheme,
        //darkTheme: Themes().darkTheme,
        home: GlassMorph()
    );

  }
}


