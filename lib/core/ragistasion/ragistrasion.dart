import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart' show Get;
import 'package:get/get_instance/src/extension_instance.dart';
import 'package:get/get_navigation/src/extension_navigation.dart' show GetNavigation;
import 'package:test_app/core/route/route.dart';
import 'package:test_app/core/widgets/custombutton_two.dart';
import 'package:test_app/core/widgets/customtextfromfield.dart';

import 'RegistrationController.dart';

class Ragistrasion extends StatelessWidget {

  final RegistrationController registrationController = Get.put(RegistrationController());

   Ragistrasion({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Stack(
        children: [

          /// this is image
          Positioned(
            child: Container(
              height: double.maxFinite,
              width: double.maxFinite,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/image/ragisterimge.png"),
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                /// hading text

                Padding(
                  padding: const EdgeInsets.only(top: 103),
                  child: Center(
                    child: Text(
                      "Registration",
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.w700,
                        color: Color(0xFF000000),
                      ),
                    ),
                  ),
                ),

                SizedBox(height: 45),

                Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: Text(
                    "Name",
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                      color: Color(0xFF000000),
                    ),
                  ),
                ),
                SizedBox(height: 15),
                /// custom name from
                CustomTextField(
                 controller: registrationController.nameController,
                  hintText: 'Name',
                  hintStyle: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: Color(0xFF565555),
                  ),
                ),

                SizedBox(height: 15,),
                //email and number
                Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: Text(
                    "Email/Number",
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                      color: Color(0xFF000000),
                    ),
                  ),
                ),
                SizedBox(height: 15),
                /// email and number text fill
                CustomTextField(
                  controller: registrationController.emailController,
                  hintText: 'Email/Number',
                  hintStyle: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: Color(0xFF565555),
                  ),
                ),

                //password

                SizedBox(height: 15,),
                //email and number
                Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: Text(
                    "password",
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                      color: Color(0xFF000000),
                    ),
                  ),
                ),
                SizedBox(height: 15),

                /// this is a password fil
                CustomTextField(
                  controller:registrationController.passWordController,
                  obscureText: true,
                  hintText: '',
                  hintStyle: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: Color(0xFF565555),
                  ),
                ),

                SizedBox(height: 15,),
                //email and number
                Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: Text(
                    "confirm password",
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                      color: Color(0xFF000000),
                    ),
                  ),
                ),
                SizedBox(height: 15),
                CustomTextField(
                  controller: registrationController.confirmPassWordController,
                  obscureText: true,
                  hintText: '',
                  hintStyle: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: Color(0xFF565555),
                  ),
                ),
                SizedBox(height: 30,),


                /// registration button

                GestureDetector(
                  onTap: (){
                    registrationController.registration();
                  },
                  child: CustombuttonTwo(
                    width: double.maxFinite,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      bottomRight: Radius.circular(20),
                    ),
                    text: "Registration",
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: Color(0xFFFFFFFF),
                    ),
                  ),
                ),

                SizedBox(height: 20.5),
                Padding(
                  padding: const EdgeInsets.only(left: 36),
                  child: Row(
                    children: [
                      Text(
                        "Already Have an Account?",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                          color: Color(0xFF1C1C1E),
                        ),
                      ),
                      SizedBox(width: 3),
                      Text(
                        "Log In",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w700,
                          color: Color(0xFF0D1361),
                        ),
                      ),
                    ],
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












/*
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test_app/core/route/route.dart';
import 'package:test_app/future/custombutton_two.dart';
import 'package:test_app/future/customtextfromfield.dart';
import 'RegistrationController.dart';

class Ragistrasion extends StatelessWidget {
  Ragistrasion({super.key});

  final RegistrationController registrationController =
  Get.put(RegistrationController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Stack(
        children: [
          /// Background Image
          Positioned.fill(
            child: Image.asset(
              "assets/image/ragisterimge.png",
              fit: BoxFit.fill,
            ),
          ),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 103),

                  /// Title
                  const Center(
                    child: Text(
                      "Registration",
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),

                  const SizedBox(height: 45),

                  /// Name
                  const Padding(
                    padding: EdgeInsets.only(left: 15),
                    child: Text("Name",
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.w600)),
                  ),
                  const SizedBox(height: 15),
                  CustomTextField(
                    controller: registrationController.nameController,
                    hintText: 'Name',
                  ),

                  const SizedBox(height: 15),

                  /// Email
                  const Padding(
                    padding: EdgeInsets.only(left: 15),
                    child: Text("Email",
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.w600)),
                  ),
                  const SizedBox(height: 15),
                  CustomTextField(
                    controller: registrationController.emailController,
                    hintText: 'Email',
                  ),

                  const SizedBox(height: 15),

                  /// Password
                  const Padding(
                    padding: EdgeInsets.only(left: 15),
                    child: Text("Password",
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.w600)),
                  ),
                  const SizedBox(height: 15),
                  CustomTextField(
                    controller: registrationController.passWordController,
                    obscureText: true,
                    hintText: 'Password',
                  ),

                  const SizedBox(height: 15),

                  /// Confirm Password
                  const Padding(
                    padding: EdgeInsets.only(left: 15),
                    child: Text("Confirm Password",
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.w600)),
                  ),
                  const SizedBox(height: 15),
                  CustomTextField(
                    controller:
                    registrationController.confirmPassWordController,
                    obscureText: true,
                    hintText: 'Confirm Password',
                  ),

                  const SizedBox(height: 30),

                  /// Registration Button
                  Obx(
                        () => GestureDetector(
                      onTap: registrationController.isLoading.value
                          ? null
                          : () {
                        registrationController.registration();
                      },
                      child: CustombuttonTwo(
                        width: double.infinity,
                        borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(30),
                          bottomRight: Radius.circular(20),
                        ),
                        text: registrationController.isLoading.value
                            ? "Please wait..."
                            : "Registration",
                      ),
                    ),
                  ),

                  const SizedBox(height: 25),

                  /// Login Redirect
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        "Already Have an Account? ",
                        style: TextStyle(fontSize: 16),
                      ),
                      GestureDetector(
                        onTap: () {
                          Get.toNamed(AppRoute.login);
                        },
                        child: const Text(
                          "Log In",
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Color(0xFF0D1361)),
                        ),
                      ),
                    ],
                  ),

                  const SizedBox(height: 30),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

 */
