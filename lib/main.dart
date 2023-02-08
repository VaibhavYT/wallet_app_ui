// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:wallet_app_ui/pages/home_page.dart';
import 'package:wallet_app_ui/widgets/cards.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        
        primarySwatch: Colors.blue,
      ),
      home:HomePage(),
    );
  }
}

