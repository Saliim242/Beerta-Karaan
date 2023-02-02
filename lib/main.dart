import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:berta_karaan/hidden_drawer.dart';
import 'package:berta_karaan/screns/QebahaBeerta.dart';

import 'package:berta_karaan/screns/home_Screen.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:page_transition/page_transition.dart';

void main() =>runApp(
  MaterialApp(

  debugShowCheckedModeBanner: false,
  home: HiddenDrawer(

  ),
),);



class Splash extends StatelessWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(

      splash: Column(
        children: [
          Lottie.asset(
            "images/relex.json",
            animate: true,
            height: 350,
            repeat: true,
          ),

          Center(
            child: Align(
              alignment: Alignment.center,
              child: Text(
                "    Action done totally brings relaxation \n relaxation done "
                    "totally brings more action. ",
                style: TextStyle(
                  fontSize: 25,
                  fontFamily: "Quintessential",
                  fontWeight: FontWeight.w500,
                  color: Colors.white,
                ),
              ),
            ),
          ),
          //Image.asset("images/appicon.png"),
        ],
      ),
      backgroundColor:  Colors.grey.withOpacity(0.8),
      nextScreen: HomeScreen(),
      splashIconSize: 450,
      duration: 8000,
      splashTransition: SplashTransition.slideTransition,
      pageTransitionType: PageTransitionType.rightToLeft,
      animationDuration: Duration(seconds: 1),
    );
  }
}
