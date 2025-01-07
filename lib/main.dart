import 'package:flutter/material.dart';
import 'package:to_do_list_task1/home.dart';
import 'package:to_do_list_task1/splash.dart';

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
        
      ),
      home: const Splash()
    );
  }
}

