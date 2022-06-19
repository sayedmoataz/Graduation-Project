

import 'package:flutter/material.dart';
import 'package:splash_screen_view/SplashScreenView.dart';

import '../modules/homePage.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return SplashScreenView(
      navigateRoute: const HomePageScreen(),
      speed: 120,
      duration: 5300,
      imageSize: 130,
      imageSrc: "assets/fcai_logo_final_en.png",
      text: "FCAI-HU",
      textType: TextType.TyperAnimatedText,
      textStyle: const TextStyle(
        fontSize: 30.0,
        fontFamily: 'HSNIbtisam', 
        height: 1,
        letterSpacing: 5
      ),
      pageRouteTransition: PageRouteTransition.SlideTransition,
    );
  }
}
