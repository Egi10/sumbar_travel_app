import 'package:flutter/material.dart';
import 'package:sumbar_travel_app/screen/main_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Sumbar Travel',
      theme: ThemeData.dark(),
      home: MainScreen(),
    );
  }
}
