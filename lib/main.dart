import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hello_world/pages/home_page.dart';
import 'package:hello_world/pages/login_page.dart';
import 'package:hello_world/utilis/routes.dart';

void main () {
  runApp(MyFirstApp());
}
class MyFirstApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      
      themeMode: ThemeMode.light,
      theme: ThemeData(
      primarySwatch: Colors.deepPurple,
      fontFamily: GoogleFonts.lato().fontFamily,
     
      ), 
        
      darkTheme: ThemeData(
        brightness: Brightness.dark,
      ),
      debugShowCheckedModeBanner: false,
      initialRoute: MyRoutes.homeRoute ,
      routes:{
        "/" : (context) => LoginPage(),
        MyRoutes.homeRoute : (context) => HomePage(),
        MyRoutes.loginRoute :(context) => LoginPage()
      } ,
    );
  }
}