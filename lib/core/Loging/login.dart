import 'dart:math';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test_app/core/route/route.dart';
import 'package:test_app/core/widgets/customtextfromfield.dart';
import '../widgets/custombutton_two.dart';
import 'loning_controller.dart' show LoningController;

class Login extends StatelessWidget {
  Login({super.key});

  final LoningController controller = Get.put(LoningController());

  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Stack(
        children: [
          Positioned(
            child: Container(
              height: double.maxFinite,
              width: double.maxFinite,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/image/logingimge.png"),
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: SingleChildScrollView(
              child: Form(
                key: formKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [




                    Padding(
                      padding: const EdgeInsets.only(top: 283.5),
                      child: Center(
                        child: Text(
                          "Login",
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.w700,
                            color: Color(0xFF000000),
                          ),
                        ),
                      ),
                    ),





                    SizedBox(height: 30),


                    Text(
                      "Email",
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                        color: Color(0xFF000000),
                      ),
                    ),



                    SizedBox(height: 15),


                    CustomTextField(
                      controller: controller.emailController,
                      hintText: 'Email',
                      hintStyle: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: Color(0xFF565555),
                      ),
                      validator: (Value) {
                        if (Value == null || Value.isEmpty) {
                          return "Type Your Email";
                        }
                      },
                    ),



                    SizedBox(height: 30),

                    Text(
                      "Password",
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                        color: Color(0xFF000000),
                      ),
                    ),


                    SizedBox(height: 15),


                    CustomTextField(
                      controller: controller.passwordController,
                      obscureText: true,
                      validator: (Value) {
                        if (Value == null || Value.isEmpty) {
                          return "Type Your Password";
                        }
                      }, hintText: '',
                    ),


                    SizedBox(height: 14),
                    Align(
                      alignment: Alignment.topRight,
                      child: GestureDetector(
                        onTap: () {
                          Get.toNamed(AppRoute.faidScreen);
                        },
                        child: Text(
                          "Forgot Password ?",
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                    ),



                    SizedBox(height: 36),


                    GestureDetector(

                      onTap: () {

                        if (formKey.currentState!.validate()) {
                          // Future.delayed(Duration(seconds: 3), () {
                          //   if (Get.isDialogOpen!) {
                          //     Get.toNamed(AppRoute.homepage);
                          //   }
                          // });
                          controller.logIngController();
                        }
                      },
                      child: CustombuttonTwo(
                        width: double.maxFinite,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(30),
                          bottomRight: Radius.circular(20),
                        ),
                        text: "Login",
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: Color(0xFFFFFFFF),
                        ),
                      ),
                    ),




                    SizedBox(height: 20),
                    Padding(
                      padding: const EdgeInsets.only(left: 36),
                      child: Row(
                        children: [
                          Text(
                            "Don’t have an account yet?",
                            style: TextStyle(
                              fontSize: 17,
                              fontWeight: FontWeight.w500,
                              color: Color(0xFF1C1C1E),
                            ),
                          ),
                          SizedBox(width: 3),
                          GestureDetector(
                            onTap: () {
                              Get.toNamed(AppRoute.ragistrasion);
                            },
                            child: Text(
                              "Ragistrasion",
                              style: TextStyle(
                                fontSize: 17,
                                fontWeight: FontWeight.w700,
                                color: Color(0xFF0D1361),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}