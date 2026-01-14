import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test_app/core/route/route.dart';

import '../widgets/custombutton_two.dart';

class AllowLocation extends StatelessWidget {
  const AllowLocation({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: double.maxFinite,
            width: double.maxFinite,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/image/locationpicone.png"),
                fit: BoxFit.fill,
              ),
            ),
          ),

          Positioned(
            top: 113,
            left: 16,
            right: 16,
            child: Column(children: [
              Center(
                child: Text(
                  "Enable Location",
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w700,
                    color: Color(0xFF000000),
                  ),
                ),
              ),
              SizedBox(height: 28.5,),

                Container(
                  height:299,
                  width:299,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/image/locationpictwo.png"),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              SizedBox(height: 30,),
              Padding(
                padding: const EdgeInsets.only(left: 45,right: 46),
                child: Text(
                  "Please share your location to help us find \n   better matches near you. Based on your \nlocation, we’ll suggest nearby profiles that \n           are a good match for you.",
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: Color(0xFF1C1C1E),
                  ),
                ),
              ),
              SizedBox(height: 30,),
              CustombuttonTwo(
                onTap: (){
                  Get.toNamed(AppRoute.homepage);
                },
                width: double.maxFinite,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30),
                  bottomRight: Radius.circular(20),
                ),
                text: "Allow Location Access",
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w400,
                  color: Color(0xFFFFFFFF),
                ),

              ),

            ]
            ),
          ),
        ],
      ),
    );
  }
}
