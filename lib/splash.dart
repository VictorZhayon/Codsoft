import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:to_do_list_task1/home.dart';

class Splash extends StatelessWidget {
  const Splash({super.key});

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      nextScreen: HomePage(),
      splash: Icon(Icons.check_circle_outline_rounded, size: 100.0, color: Colors.white,),
      splashIconSize: 2000.0,
      centered: true,
      curve: Curves.decelerate,
      backgroundColor: Colors.teal,
      duration: 3100,
    );
  }
}