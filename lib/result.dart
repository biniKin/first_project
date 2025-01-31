import 'package:flutter/material.dart';
import 'package:first_project/Home.dart';

class Reslut_page extends StatelessWidget {
  final double bmi;
  String se = "";
  Reslut_page({required this.bmi});

  void sen(){
    if (bmi < 18.5){
      print("under");
    }
    else if(bmi < 24.9){
      se = "Normal";
    }
    else if(bmi < 29.9){
      se = "Over";
    }
    else{
      se = "Obis";
    }

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFAD9DDF),
      appBar: AppBar(
        //elevation: 2,
        shadowColor: Color(0xFF714293),
        backgroundColor: Color(0xFFAD9DDF),
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
                elevation: 20,
                shadowColor: Color(0xFF735DA5),
                shape: RoundedRectangleBorder(
                    side: BorderSide(
                      color: Color(0xFF8E1CE1),
                      width: 2,
                    ),
                    borderRadius: BorderRadius.circular(12)
                ),
                child: Column(
                  children: [
                    Text("Your Reslut", style: TextStyle(fontSize: 60, fontWeight: FontWeight.bold),),
                    Text(bmi.toStringAsFixed(2), style: TextStyle(fontSize: 25),),

                    Text(se),
                    SizedBox(height: 10,),
                    Container(
                      padding: EdgeInsets.all(10),
                      width: double.infinity,
                      height: 230,
                      child: Card(
                        elevation: 10,
                        shadowColor: Color(0xFF4B0FD3),
                        color: Color(0xFF8F73C8),
                        shape: RoundedRectangleBorder(
                          side: BorderSide(
                            color: Color(0xFF8E1CE1),
                            width: 1
                          ),
                          borderRadius: BorderRadius.circular(12)
                        ),
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
          SizedBox(height: 10,),
          SizedBox(
              width: 150,
              height: 50,
            child: ElevatedButton(
              style: ButtonStyle(
                shadowColor: WidgetStatePropertyAll(Color(0xFF735DA5)),
                elevation: WidgetStatePropertyAll(16),
                backgroundColor: WidgetStatePropertyAll(
                  Color(0xFF735DA5),
                ),
                shape: WidgetStatePropertyAll(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                    side: BorderSide(width: 1, color: Color(0xFF8E1CE1)),
                  ),
                ),
              ),
              onPressed: (){
                Navigator.pushNamed(context, '/hom');
              },
              child: Text("Calculate Again", style: TextStyle(color: Colors.black)),
            ),
          )
        ],
      ),
    );
  }
}

