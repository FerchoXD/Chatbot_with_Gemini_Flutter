import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme {
  static ThemeData getTheme(bool isDark) {
    return isDark ? _darkTheme : _lightTheme;
  }
  
}

// light
ThemeData _lightTheme = ThemeData(
  brightness: Brightness.light,
  colorScheme: ColorScheme.fromSeed(
    seedColor: const Color(0xFF8CE7EB),
    primary: const Color(0xFF8CE7EB),
    secondary: const Color(0xFF4FA9E6),
    tertiary: const Color(0xFFE6A44A),
    error: const Color(0xFFE64A4A),
    brightness: Brightness.light,
  ),
  useMaterial3: true,

  textSelectionTheme: const TextSelectionThemeData(
    selectionHandleColor: Colors.transparent, // Hacer el marcador invisible
  ),

  fontFamily: 'Roboto',

  //personalización del texto
  textTheme: const TextTheme(
    bodyLarge: TextStyle(color: Colors.blue),  // Color del texto para body (grande)
    bodyMedium: TextStyle(color: Colors.black), // Color del texto para body (mediano)
    bodySmall: TextStyle(color: Colors.black54), // Color del texto para body (pequeño)
    headlineMedium: TextStyle(color: Colors.black), // Títulos
    headlineSmall: TextStyle(color: Colors.black),
    titleLarge: TextStyle(color: Color.fromARGB(255, 214, 15, 15)),  // Texto en títulos o subtítulos
  ),
);

// dark
ThemeData _darkTheme = ThemeData(
  brightness: Brightness.dark,
  colorScheme: ColorScheme.fromSeed(
    seedColor: const Color(0xFF4FA9E6),
    brightness: Brightness.dark,
  ),
  useMaterial3: true,
      
      textSelectionTheme: const TextSelectionThemeData(
    selectionHandleColor: Colors.transparent, // Hacer el marcador invisible
  ),

  fontFamily: 'Roboto',
  
  //personalización del texto
  textTheme: const TextTheme(
    bodyLarge: TextStyle(color: Colors.red), 
    bodyMedium: TextStyle(color: Colors.black),
    bodySmall: TextStyle(color: Colors.black54), 
    headlineMedium: TextStyle(color: Colors.black), 
    headlineSmall: TextStyle(color: Colors.black),
    titleLarge: TextStyle(color: Color(0xFFFAFAFA)),  
  ),
);


class CustomColors {
  static const Color inputChat = Color(0xFF414446);
  static const Color secondary = Color(0xFF8CE7EB);
  static const Color tertiary = Color(0xFFE6A44A);
  static const Color error = Color(0xFFE64A4A);
  static const Color brightness = Color(0xFFFAFAFA);
}