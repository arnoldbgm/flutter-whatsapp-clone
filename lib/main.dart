import 'package:flutter/material.dart';
import 'package:flutter_clone_whatsapp/pages/home_pages.dart';

void main() {
  runApp(MainApp());
}

class MainApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "WhatsApp Clone",
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          color: Color(0xff085E55),
        ),
        // Aqui establemceos los colorees por defecto
        floatingActionButtonTheme: const FloatingActionButtonThemeData(
          backgroundColor: Color(0xff1CC956),
        ),
      ),
      home: HomePage(),
    );
  }
}
