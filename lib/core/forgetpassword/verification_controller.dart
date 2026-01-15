import 'dart:convert';
import 'dart:developer';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:test_app/core/ragistasion/Homepage.dart';

class VerificationController extends GetxController {

  TextEditingController otpController = TextEditingController();

  Future<void> verifyEmail() async {
    try {
      final response = await http.post(Uri.parse("http://10.0.20.117:5021/api/v1/auth/otp/resend-otp"),
        headers: {
          "Content-Type": "application/json",
        },
        body: jsonEncode({
          "otp": otpController.text.trim(),
        }),
      );

      print("Status Code: ${response.statusCode}");
      print("Response Body: ${response.body}");

      if (response.statusCode == 200) {
        log("respos${response.body}");
        Get.to(Homepage());
      } else {
        final Map<String, dynamic> errorData = jsonDecode(response.body);
        Get.snackbar(
          "Verification Failed",
          errorData["message"] ?? "Invalid OTP",
          snackPosition: SnackPosition.BOTTOM,
        );
      }
    } catch (e) {
      print("Error: $e");
      Get.snackbar("Error", "Something went wrong");
    }
  }

  @override
  void onClose() {

    otpController.dispose();
    super.onClose();
  }
}
