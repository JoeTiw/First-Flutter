import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:velocity_x/velocity_x.dart';


class MyTheme{
  static ThemeData lightTheme(BuildContext context) => ThemeData( 
      primarySwatch: Colors.deepPurple,
      fontFamily: GoogleFonts.poppins().fontFamily,
      cardColor: Colors.white,
      canvasColor: creamColor,
      appBarTheme: AppBarTheme(
        color: Colors.white,
        elevation: 0.0,
        iconTheme: IconThemeData(color: Colors.black),
        )
     
      );


      static ThemeData darkTheme(BuildContext context) => ThemeData( 
      fontFamily: GoogleFonts.poppins().fontFamily,
      cardColor: Colors.black,
      canvasColor: darkColor,
      appBarTheme: AppBarTheme(
        color: Colors.black,
        elevation: 0.0,
        iconTheme: IconThemeData(color: Colors.black),
        )
     
      );
     
     


                          //dart colors and might change later..this is just to test it out.
          static Color creamColor = Color(0xfff5f5f5);
          static Color darkColor = Vx.gray800;
          static Color darkBluishColor = Color(0xfff403b58);
          static Color lightBluishColor = Vx.purple400;
          static Color whiteColor = Vx.white;
  
}