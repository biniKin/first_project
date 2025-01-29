import 'package:flutter/material.dart';

class Reslut_page extends StatelessWidget {
  const Reslut_page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFB6A7EF),
      appBar: AppBar(
        elevation: 2,
        shadowColor: Color(0xFF714293),
        backgroundColor: Color(0xFF735DA5),
        title: Text("BMI CALCULATOR",
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),

        centerTitle: true,
      ),
    );
  }
}
