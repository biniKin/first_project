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
  void _resetState() {
    setState(() {
      textEditingController1.clear();
      textEditingController2.clear();// Clear text field
      reslut = 0; // Reset displayed value or calculation
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFBD98DC),
      appBar: AppBar(
        shape: Border(
          bottom: BorderSide(
            width: 1
          )
        ),
        elevation: 2,
        shadowColor: Color(0xFF735DA5),
        backgroundColor: Color(0xFF735DA5),
        title: Text("BMI CALCULATOR",
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
            icon: Icon(Icons.refresh, color: Colors.black,),
          ),
        ],
      ),
      drawer: Drawer(
        child: Container(
          color: Color(0xFF735DA5),
          child: ListView(
            children: [
              Container(

                child: DrawerHeader(
                    child: Center(
                        child: Text("BMI Calculator", style: TextStyle(fontSize: 25),)
                    )
                ),
              ),

              
              ListTile(
                leading: Icon(Icons.home, color: Colors.black, size: 25,),
                title: Text("Home", style: TextStyle(fontSize: 17),),
              ),
              SizedBox(height: 10,),
              ListTile(
                leading: Icon(Icons.account_circle, color: Colors.black, size: 25,),
                title: Text("Profile", style: TextStyle(fontSize: 17),),
              ),
              SizedBox(height: 10,),
              ListTile(
                leading: Icon(Icons.light_mode, color: Colors.black, size: 25,),
                title: Text("Theme", style: TextStyle(fontSize: 17),),
              ),

            ],
          ),
        ),
      ),

      body: SingleChildScrollView(
        child: Column(
          //mainAxisAlignment: MainAxisAlignment.center,

          children: [

            SizedBox(height: 90),
            Padding(

              padding: const EdgeInsets.all(20.0),
              child: Card(

                color: Color(0xFF735DA5),
                elevation: 20,
                shadowColor: Color(0xFF735DA5),
                shape: OutlineInputBorder(
                  borderSide: BorderSide(
                    width: 1
                  )
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
                          fillColor: Color(0xFFC5ACE6),
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
                          fillColor: Color(0xFFC5ACE6),
                        ),
                        keyboardType: TextInputType.numberWithOptions(
                          decimal: true,
                        ),
                      ),
                      //
                      Text("Your BMI is:"),
                      Text(reslut.toStringAsFixed(2)),
                      //
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: 10),
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
            ),

          ],
        ),
      ),
    );
  }
}
