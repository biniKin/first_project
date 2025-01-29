import 'package:flutter/material.dart';
import 'package:first_project/Home.dart';

class Reslut_page extends StatelessWidget {
  final double bmi;
  Reslut_page({required this.bmi});

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
                color: Color(0xFF8766CA),
                child: Column(
                  children: [
                    Text("Your Reslut", style: TextStyle(fontSize: 60, fontWeight: FontWeight.bold),),
                    Text(bmi.toStringAsFixed(2), style: TextStyle(fontSize: 25),),
                    SizedBox(height: 10,),
                    Container(
                      padding: EdgeInsets.all(10),
                      width: double.infinity,
                      height: 230,
                      child: Card(
                        elevation: 10,
                        shadowColor: Color(0xFF4B0FD3),
                        color: Color(0xFF8F73C8),
                        child: Column(
                          children: [
                            SizedBox(height: 10,),
                            Text("Interpretation", style: TextStyle(fontSize: 27),),
                            SizedBox(height: 10,),
                            Text("Under Weight:   BMI < 18.5"),
                            SizedBox(height: 10,),
                            Text("Normal Weight:   BMI 18.5 - 24.9"),
                            SizedBox(height: 10,),
                            Text("Over Weight:   BMI 25 - 29.9"),
                            SizedBox(height: 10,),
                            Text("Obesity:   BMI 30 - 34.9"),
                            SizedBox(height: 10,),
                          ],
                        ),
                      ),
                    )
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

