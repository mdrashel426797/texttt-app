import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/src/extension_instance.dart';
import 'package:get/get_navigation/src/extension_navigation.dart' show ExtensionDialog, GetNavigation;
import 'package:pinput/pinput.dart' show Pinput, PinTheme;
import 'package:test_app/core/forgetpassword/verification_controller.dart';
import 'package:test_app/core/widgets/custombutton_two.dart';

class Verification extends StatelessWidget {

  final VerificationController varFiCaTionController = Get.put(VerificationController());

   Verification({super.key});

  @override
  Widget build(BuildContext context) {
    String otpCode;

    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: double.maxFinite,
            width: double.maxFinite,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/image/varificationpic.png"),
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
                Center(
                  child: Text(
                    "Email Verification ",
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w700,
                      color: Color(0xFF000000),
                    ),
                  ),
                ),
                SizedBox(height: 50,),
                Center(
                  child: Text(
                    "Code has been send to im******@gmail.com",
                    style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF000000),
                    ),
                  ),
                ),
                SizedBox(height: 14,),


                Center(
                  child: Pinput(
                   controller: varFiCaTionController.otpController ,
                    length: 4,
                    onChanged: (value) => otpCode = value,
                    onCompleted: (value) => print("OTP Completed: $value"),

                  ),
                ),





                SizedBox(height: 129,),

                ///custom button
                CustombuttonTwo(
                  width: double.maxFinite,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    bottomRight: Radius.circular(20),
                  ),
                  text: "Verification",
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: Color(0xFFFFFFFF),
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
