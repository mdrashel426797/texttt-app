import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test_app/core/route/route.dart';
import 'package:test_app/core/widgets/custombutton_two.dart';
import 'package:test_app/core/widgets/customtextfromfield.dart';
class FaidScreen extends StatelessWidget {
  FaidScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        // alignment: Alignment.center,
        children: [
          Container(
            height: double.maxFinite,
            width: double.maxFinite,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/image/faidimage.png"),
                fit: BoxFit.fill,
              ),
            ),
          ),
          Positioned(
            top: 270,
            left: 16,
            right: 16,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 79),
                  child: Text(
                    "Find Your Account",
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w700,
                      color: Color(0xFF000000),
                    ),
                  ),
                ),
                SizedBox(height: 45),
                Text(
                  "Email",
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    color: Color(0xFF000000),
                  ),
                ),
                SizedBox(height: 15),



                CustomTextField(hintText: "Email",

                ),



                SizedBox(height: 90),

                GestureDetector(
                  onTap: (){
                    Get.toNamed(AppRoute.verification);
                  },
                  child: CustombuttonTwo(
                    width: double.maxFinite,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      bottomRight: Radius.circular(20),
                    ),
                    text: "Search",
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: Color(0xFFFFFFFF),
                    ),
                  ),
                ),
                SizedBox(height: 30),
                Container(
                  height: 50,
                  width: double.maxFinite,
                  decoration: BoxDecoration(
                    border: Border.all(width: 1, color: Color(0xFF1621A4)),
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      bottomRight: Radius.circular(20),
                    ),
                  ),
                  child: Center(
                    child: GestureDetector(
                      onTap: (){
                        Get.toNamed(AppRoute.login);
                      },
                      child: Text(
                        "Cancel",
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w400,
                          color: Color(0xFFF65F5F),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
