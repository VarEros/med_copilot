import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:med_copilot/screen/login_screen.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});
  

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = ThemeData(
      fontFamily: GoogleFonts.raleway().fontFamily,
      colorScheme: ColorScheme.fromSeed(
        seedColor: Colors.green,
      ),
      brightness: Brightness.light,
    );

    return MaterialApp(
      theme: theme,
      debugShowCheckedModeBanner: false,
      home: const LoginScreen(),
    );
  }
}
