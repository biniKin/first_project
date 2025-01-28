import 'package:first_project/Home.dart';
import 'package:first_project/about.dart';
import 'package:first_project/materials.dart';
import 'package:first_project/theme.dart';
import 'package:flutter/material.dart';

class DrawerMat extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: Color(0xFFB6A7EF),
        child: ListView(

          children: [
            SizedBox(height: 20,),
            DrawerHeader(
                child: Center(
                    child: Text(
                      "BMI Calculator",
                      style: TextStyle(
                          fontSize: 25),
                    )
                )
            ),
            SizedBox(height: 10,),
            ListTile(
              leading: Icon(Icons.home, color: Colors.black, size: 25,),
              title: Text("Home", style: TextStyle(fontSize: 17),),
              onTap: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (context) => Home()));
              },
            ),

            SizedBox(height: 10,),
            ListTile(
              leading: Icon(Icons.dark_mode_rounded, color: Colors.black, size: 25,),
              title: Text("Theme", style: TextStyle(fontSize: 17),),
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(builder: (context) => ThemeMat()));
              },
            ),

            SizedBox(height: 10,),
            ListTile(
              leading: Icon(Icons.info, color: Colors.black, size: 25,),
              title: Text("About", style: TextStyle(fontSize: 17),),
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(builder: (context) => About()));
              },
            ),

          ],
        ),
      ),
    );
  }
}