import 'package:flutter/material.dart';
import 'screens/home_page.dart';

void main() => runApp(HappyFlowerApp());

class HappyFlowerApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'HappyFlowerApp',
      home: HomePage(),
    );
  }

}