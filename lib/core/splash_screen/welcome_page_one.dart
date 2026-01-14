import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:test_app/core/route/route.dart';
import 'package:test_app/core/widgets/custombutton.dart';

class WelcomePageOne extends StatelessWidget {
  const WelcomePageOne({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            //bg image
            child: Container(
              height: double.maxFinite,
              width: double.maxFinite,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/image/Welcome Screen (1).png"),
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),

          Column(
            children: [
              Padding(
                padding:  EdgeInsets.only(top: 560, left: 60, right: 60),
                child: Text(
                  "Someone Is with you,",
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.w700),
                ),
              ),
              SizedBox(height: 100),

              ///<<<<<<<<<< custom button>>>>>>>>>>>
              GestureDetector(
                onTap: (){
                  Get.toNamed(AppRoute.welcomepageTwo);
                },
                child: Custombutton(
                  color: Colors.red,

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
