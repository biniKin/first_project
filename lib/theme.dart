import 'package:first_project/drawer.dart';
import 'package:flutter/material.dart';

class ThemeMat extends StatefulWidget {
  const ThemeMat({super.key});

  @override
  State<ThemeMat> createState() => _ThemeMatState();
}

class _ThemeMatState extends State<ThemeMat> {
  void _resetState() {
    setState(() {
      // Reset displayed value or calculation
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xFFB6A7EF),
        appBar: AppBar(
          elevation: 2,
          shadowColor: Color(0xFF714293),
          backgroundColor: Color(0xFF735DA5),
          title: Text(
            "BMI CALCULATOR",
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          centerTitle: true,
          actions: [
            IconButton(
              onPressed: () {
                _resetState();
              },
              icon: Icon(
                Icons.refresh,
                color: Colors.black,
              ),
            ),
          ],
        ),
        drawer: DrawerMat(),
        body: Row(
          children: [

          ],
        ),
    );
  }
}
