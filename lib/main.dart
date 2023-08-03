import 'package:flutter/material.dart';
import 'package:flutter_clone_whatsapp/pages/home_pages.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "WhatsApp Clone",
      home: HomePage(),
    );
  }
}
