import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:get/get.dart';
import 'package:test_app/core/route/route.dart';
class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 3), () {
      Get.toNamed(AppRoute.welcomePageOne);
    });
  }

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
                  image: AssetImage("assets/image/splash_bg.png"),
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),

          Padding(
            padding:  EdgeInsets.symmetric(vertical: 245),
            child: Center(
              child: Column(
                children: [
                  Padding(
                    padding:  EdgeInsets.only(left: 95, right: 95),
                    child: Image.asset(
                      'assets/image/splash_iconimage.png',
                      fit: BoxFit.fill,
                      height: 185,
                      width: 185,
                    ),
                  ),
                  SizedBox(height: 14),
                  Padding(
                    padding:  EdgeInsets.only(left:88, right: 89),
                    child: Text(
                      "XXIGENT",
                      style: TextStyle(
                        fontSize: 44,
                        fontWeight: FontWeight.w700,
                        color: Color(0xFF000000),
                      ),
                    ),
                  ),
                  SizedBox(height: 14),
                  Padding(
                    padding:  EdgeInsets.only(left: 52, right: 52),
                    child: Text(
                      "Immediate connection \n      when you need it",
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.w700,
                        color: Color(0xFF000000),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),

          Padding(
            padding: EdgeInsets.only(
              top: 652,
              left: 152,
              right: 153,
            ),
            child: SpinKitCircle(
              color: const Color(0xFF1724AE),
              size: 70,
            ),
          ),

        ],
      ),
    );
  }
}
