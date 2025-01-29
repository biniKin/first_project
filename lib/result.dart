import 'package:flutter/material.dart';
import 'package:first_project/Home.dart';

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
      body: Column(
        children: [
          SizedBox(height: 40,),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 400,
              width: double.infinity,
              child: Card(
                color: Color(0xFF735DA5),
                child: Column(
                  children: [
                    Text("Your reslut", style: TextStyle(fontSize: 60, fontWeight: FontWeight.bold),),

                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
