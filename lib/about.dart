
import 'package:first_project/drawer.dart';
import 'package:flutter/material.dart';

class About extends StatefulWidget {
  const About({super.key});

  @override
  State<About> createState() => _AboutState();
}

class _AboutState extends State<About> {
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

      ),

      body: Container(
        width: double.infinity,
        height: 300,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Card(
            shadowColor: Color(0xFF4B0FD3),
            color: Color(0xFF8F73C8),
            child: Column(
              children: [
                SizedBox(height: 10,),
                Text("Welcome!", style: TextStyle(fontSize: 30),),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("About This App Welcome to the BMI Calculator App! This app is designed to help you easily calculate your Body Mass Index (BMI) and understand your health better. BMI is a simple metric that uses your height and weight to determine if you fall within a healthy weight range.",
                  style: TextStyle(fontSize: 18),),
                ),
              ],
            ),
          ),
        ),
      )
      
    );
  }
}
