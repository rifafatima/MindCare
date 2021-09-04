import 'dart:async';
import 'package:flutter/material.dart';
//import 'package:mental_health/screens/welcome_screen.dart';
import 'package:page_transition/page_transition.dart';

class SplashScreen extends StatefulWidget {

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with SingleTickerProviderStateMixin {
   AnimationController _controller;
   Animation<Color> animation;

  @override
  // void initState() {
  //   super.initState();

  //   _controller = AnimationController(
  //     duration: const Duration(seconds: 7),
  //     vsync: this,
  //   )..repeat();
  //   Timer(Duration(seconds: 4), () {
  //     Navigator.pushAndRemoveUntil(
  //       context,
  //       PageTransition(type: PageTransitionType.fade, child: WelcomeScreen()),
  //       (route) => false,
  //     );
  //   });
  // }

  Animatable<Color> background = TweenSequence<Color>([
    TweenSequenceItem(
      weight: 1.0,
      tween: ColorTween(
        begin: Colors.white,
        end: Colors.teal.shade300,
      ),
    ),
  ]);

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
        animation: _controller,
        builder: (context, child) {
          return Scaffold(
            body: Container(
              color: background
                  .evaluate(AlwaysStoppedAnimation(_controller.value)),
              child: Center(
                child: Text(
                  "MIND CARE",
                  style: TextStyle(fontFamily: "CinzelDecorative", fontSize: 27),
                ),
              ),
            ),
          );
        });
  }
}
