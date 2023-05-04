import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:swiggy_dash/utils/colors.dart';
import 'package:swiggy_dash/view/bottom_nav.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      splashIconSize: 300,
      splash: SizedBox(
        child: Center(
            child: Column(
          children: [
            Image.asset(
              "assets/image/logo1.png",
              height: 300,
              width: 300,
            ),
          ],
        )),
      ),
      backgroundColor: xWhite,
      nextScreen: const BNavi(),
      duration: 1,
      splashTransition: SplashTransition.scaleTransition,
      pageTransitionType: PageTransitionType.rightToLeft,
      animationDuration: const Duration(
        seconds: 1,
      ),
    );
  }
}
