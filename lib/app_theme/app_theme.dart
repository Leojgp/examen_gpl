import 'package:flutter/material.dart';

class AppTheme {
  
  static const Color primary = Colors.green;

  static final ThemeData lightTheme = ThemeData.light().copyWith(
        
        // Color primario
        primaryColor: primary,
        
        // AppBar Theme
        appBarTheme: const AppBarTheme(
          color: primary, 
          titleTextStyle: TextStyle( color: Colors.white, fontSize: 24),
          iconTheme: IconThemeData(color: Colors.white)
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: primary,
            foregroundColor: Colors.white,
            shape: StadiumBorder(),
            elevation: 5,
          )
        ),
      );
}