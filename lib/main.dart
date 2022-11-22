import 'package:flutter/material.dart';
import 'package:tugas10/Form_login.dart';
import 'package:tugas10/Home_screen.dart';
import 'package:tugas10/Form_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Selamat Datang',
      theme: ThemeData(
        primarySwatch: Colors.yellow,
      ),
      home: const HomeScreen(),
      routes: {
        HomeScreen.routes: (context) => const HomeScreen(),
        FormScreen.routes: (context) => const FormScreen(),
        Signup.routes: (context) => const Signup(),
      },
    );
  }
}
