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
      appBar: AppBar(
        shape: Border(
          bottom: BorderSide(
            color: const Color.fromARGB(255, 0, 0, 0),
            width: 1,
          ),
        ),
        elevation: 4,
        backgroundColor: const Color.fromARGB(255, 241, 239, 239),
        title: Container(
          padding: EdgeInsets.all(6),
          decoration: BoxDecoration(
            border: Border.all(width: 1.5, color: Colors.black),
          ),
          child: Text("BMI calculator",
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {
              (context as Element).markNeedsBuild();
            },
            icon: Icon(Icons.refresh),
          ),
        ],
      ),

      body: SingleChildScrollView(
        child: Column(
          //mainAxisAlignment: MainAxisAlignment.center,
          children: [

            SizedBox(height: 90),
            Padding(

              padding: const EdgeInsets.all(20.0),
              child: Card(
                color: const Color.fromARGB(255, 234, 231, 231),
                elevation: 10,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                  side: BorderSide(width: 2, color: Colors.black),
                ),

                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    children: [

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
                            borderSide: BorderSide(width: 1.5),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12),
                            borderSide: BorderSide(
                              width: 1.5,
                              color: Colors.black,
                            ),
                          ),
                          filled: true,
                          fillColor: const Color.fromARGB(240, 255, 255, 255),
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
                            borderSide: BorderSide(width: 1.5),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12),
                            borderSide: BorderSide(
                              width: 1.5,
                              color: Colors.black,
                            ),
                          ),
                          filled: true,
                          fillColor: const Color.fromARGB(240, 255, 255, 255),
                        ),
                        keyboardType: TextInputType.numberWithOptions(
                          decimal: true,
                        ),
                      ),
                      //
                      Text("Your BMI is: "),
                      Text(reslut.toStringAsFixed(2)),
                      //
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: 10),
            ElevatedButton(
              style: ButtonStyle(
                backgroundColor: WidgetStatePropertyAll(
                  const Color.fromARGB(255, 189, 182, 182),
                ),
                shape: WidgetStatePropertyAll(
                  RoundedRectangleBorder(
                    side: BorderSide(width: 2, color: Colors.black),
                  ),
                ),
              ),
              onPressed: () {
                setState(
                    () {
                      reslut = double.parse(textEditingController1.text) /
                          (double.parse(textEditingController2.text) *
                              double.parse(textEditingController2.text));
                    }
                );
              },
              child: Text("Calculate", style: TextStyle(color: Colors.black)),
            ),
          ],
        ),
      ),
    );
  }
}
