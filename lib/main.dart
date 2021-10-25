import 'package:flutter/material.dart';
import 'package:lieblings_wg/views/home_screen.dart';

void main() {
  runApp(LieblingsWgApp());
}

//TODO: Layout through Flex or SingleChildScrollView
class LieblingsWgApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Lieblings WG',
      theme: ThemeData.dark(),
      home: HomeScreen(),
    );
  }
}
