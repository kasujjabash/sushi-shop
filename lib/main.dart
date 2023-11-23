import 'package:flutter/material.dart';
import 'package:sushi/pages/menu_page.dart';
import 'pages/home_page.dart'; 

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const HomePage(),
      routes :{
        '/homepage':(context) =>const HomePage(),
        '/menupage' : (context) => const MenuPage()
      }
    );
  }
}