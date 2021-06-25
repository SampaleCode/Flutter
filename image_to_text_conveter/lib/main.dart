import 'package:flutter/material.dart';
import 'MySplashScreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Image to Text Converter',
      home: MySplashScreen(),
    );
  }
}
