import 'package:flutter/material.dart';
import 'package:new_year/2025.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: NewYear(),
    );
  }
}






