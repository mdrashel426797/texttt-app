import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart' show Get;
import 'package:get/get_navigation/src/extension_navigation.dart' show GetNavigation;
import 'package:test_app/core/route/route.dart';

import '../widgets/custombutton.dart' show Custombutton;

class WelcomepageTwo extends StatelessWidget {
  const WelcomepageTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
body: Stack(
  children: [
    Positioned(
    child: Container(
      height: double.maxFinite,
      width: double.maxFinite,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/image/onbordscreentwopictow.png"),
          fit: BoxFit.fill,
        ),
      ),
    ),
  ),

    // stack culam
    Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 560, left: 60, right: 60),
          child: Text(
            "Share your situation,",
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.w700),
          ),
        ),
        SizedBox(height: 86),

        ///<<<<<<<<<< custom button>>>>>>>>>>>
        GestureDetector(
          onTap: (){
            Get.toNamed(AppRoute.welcomepagetree);
          },
          child: Custombutton(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30),
              bottomRight: Radius.circular(20),
            ),
            text: "Next",
            style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.w400,
              color: Color(0xFFFFFFFF),
            ),

            icon: Icons.arrow_forward,
          ),
        ),
      ],
    ),
  ],
),

    );
  }
}
