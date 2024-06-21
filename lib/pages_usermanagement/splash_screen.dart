

import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:salon/pages_usermanagement/onboarding_screen.dart';








class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
        splash: Center(
          child: Image.asset('assets/saloon_logo.png',),
          // child: SvgPicture.asset('assets/logo.svg'),
        ),
        nextScreen:  const OnBoardingScreen(),
        duration: 3500,
        backgroundColor: Colors.white,

        
        
        );
  }
}
