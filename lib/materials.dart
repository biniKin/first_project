import 'package:first_project/drawer.dart';
import 'package:first_project/result.dart';
import 'package:flutter/material.dart';

class Material_of_bmi extends StatefulWidget {
  const Material_of_bmi({super.key});

  @override
  State<Material_of_bmi> createState() => _Material_of_bmiState();
}

class _Material_of_bmiState extends State<Material_of_bmi> {
  final TextEditingController textEditingController2 = TextEditingController();
  final TextEditingController textEditingController1 = TextEditingController();
  double reslut = 0;


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
      drawer: DrawerMat(),

      body: SingleChildScrollView(
        child: Column(
          //mainAxisAlignment: MainAxisAlignment.center,

          children: [
            SizedBox(height: 50),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Card(

                color: Color(0xFF735DA5),
                elevation: 20,
                shadowColor: Color(0xFF735DA5),


                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    children: [
                      SizedBox(height: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          GestureDetector(
                            onTap: (){
                            },
                            child: Column(
                              children: [

                                Container(
                                  height: 50,
                                  width: 50,
                                  child: Card(
                                      shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(10),
                                          side: BorderSide(
                                              width: 1,
                                              color: Color(0xFF8E1CE1)
                                          )
                                      ),
                                      color: Color(0xFFBD98DC),
                                      child: Icon(Icons.male_sharp, size: 33, color: Colors.black,)
                                  ),
                                ),
                                Text("Male", style: TextStyle(fontWeight: FontWeight.bold),)
                              ],
                            ),
                          ),
                          SizedBox(width: 16,),
                          GestureDetector(
                            child: Column(
                              children: [
                                Container(
                                  height: 50,
                                  width: 50,

                                  child: Card(
                                      shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(10),
                                          side: BorderSide(
                                              width: 1,
                                              color: Color(0xFF714293)
                                          )
                                      ),
                                      color: Color(0xFF7A5DBD),
                                      child: Icon(Icons.female_outlined, size: 33, color: Colors.black,)
                                  ),
                                ),
                                Text("Female", style: TextStyle(fontWeight: FontWeight.bold),)
                              ],
                            ),
                          ),
                        ],
                      ),


                      SizedBox(height: 15,),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text("Mass(KG)",
                          style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                          ),),
                      ),

                      //
                      SizedBox(height: 7,),
                      TextField(
                        controller: textEditingController1,
                        decoration: InputDecoration(
                          hintText: "Enter your mass",
                          hintStyle: TextStyle(color: Colors.black),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12),
                            borderSide: BorderSide(width: 1),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12),
                            borderSide: BorderSide(
                              width: 1.5,
                              color: Colors.black,
                            ),
                          ),
                          filled: true,
                          fillColor: Color(0xFFB6A7EF),
                        ),
                        keyboardType: TextInputType.numberWithOptions(
                          decimal: true,
                        ),
                      ),

                      //
                      SizedBox(height: 15,),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text("Height(CM)",
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                        ),),
                      ),
                      SizedBox(height: 7,),
                      TextField(
                        controller: textEditingController2,
                        decoration: InputDecoration(
                          hintText: "Enter your height",
                          hintStyle: TextStyle(color: Colors.black),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12),
                            borderSide: BorderSide(width: 1),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12),
                            borderSide: BorderSide(
                              width: 1.5,
                              color: Colors.black,
                            ),
                          ),
                          filled: true,
                          fillColor: Color(0xFFB6A7EF),
                        ),
                        keyboardType: TextInputType.numberWithOptions(
                          decimal: true,
                        ),
                      ),
                      //
                      SizedBox(height: 40,)
                      //
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: 5),
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
                      side: BorderSide(width: 1, color: Colors.black),
                    ),
                  ),
                ),
                onPressed: () {
                  setState(() {
                    Navigator.pushNamed(context,'/ResPage');

                  });
                },
                child: Text("Calculate", style: TextStyle(color: Colors.black)),
              ),
            ),

          ],
        ),
      ),
    );
  }
}
