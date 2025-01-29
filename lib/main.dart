import 'package:first_project/Home.dart';
import 'package:first_project/about.dart';
import 'package:first_project/materials.dart';
import 'package:first_project/result.dart';
import 'package:first_project/drawer.dart';
import 'package:first_project/theme.dart';
import 'package:flutter/material.dart';


void main() {
  runApp(MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light(),
      home: Material_of_bmi(),
      routes:{
        '/abt':(context) => const About(),
        '/the':(context) => const ThemeMat(),
      } ,
    );
  }
}
