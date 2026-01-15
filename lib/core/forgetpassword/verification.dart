import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pinput/pinput.dart' show Pinput;
import 'package:test_app/core/forgetpassword/verification_controller.dart';
import 'package:test_app/core/widgets/custombutton_two.dart';
import '../route/route.dart';
import '../widgets/custombutton.dart';

class Verification extends StatelessWidget {
  final VerificationController varFiCaTionController = Get.put(VerificationController());

  Verification({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Stack(
        children: [
          Container(
            height: double.maxFinite,
            width: double.maxFinite,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/image/varification.png"),
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
                const Center(
                  child: Text(
                    "Email Verification ",
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w700,
                      color: Color(0xFF000000),
                    ),
                  ),
                ),
                const SizedBox(height: 50),
                const Center(
                  child: Text(
                    "Code has been send to im******@gmail.com",
                    style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF000000),
                    ),
                  ),
                ),
                const SizedBox(height: 14),

                Center(
                  child: Pinput(
                    controller: varFiCaTionController.otpController,
                    length: 4,
                    onCompleted: (value) => print("OTP Completed: $value"),
                  ),
                ),

                const SizedBox(height: 129),

                /// Custom Button with Validation & Loader
                GestureDetector(
                  onTap: () {
                    varFiCaTionController.verifyEmail();
                    },
                  child: CustombuttonTwo(
                    width: double.maxFinite,
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(30),
                      bottomRight: Radius.circular(20),
                    ),
                    text: "Verification",
                    style: const TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: Color(0xFFFFFFFF),
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














