import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:test_app/core/forgetpassword/verification.dart';

  class RegistrationController extends GetxController {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passWordController = TextEditingController();
  final TextEditingController confirmPassWordController = TextEditingController();

  RxBool isLoading = false.obs;
  Future<void> registration() async {

    if(nameController.text.isEmpty || emailController.text.isEmpty ||
        passWordController.text.isEmpty || confirmPassWordController.text.isEmpty) {
      Get.snackbar("Error", "All fields are required");
      return;
    }

    if (passWordController.text != confirmPassWordController.text) {
      Get.snackbar("Error", "Password & Confirm Password not match");
      return;
    }

    try {
      isLoading.value = true;

      final response = await http.post(Uri.parse("http://10.0.20.117:5021/api/v1/auth/otp/signup"),
        headers: {
          "Content-Type": "application/json",
        },
        body: jsonEncode({
          "email": emailController.text.trim(),
          "password": passWordController.text.trim(),
          "name": nameController.text.trim(),
          "isAgreeWithTerms": true,
        }),
      );

      isLoading.value = false;
      if (response.statusCode == 201) {
        final data = jsonDecode(response.body);
        print("Sign UP Response: $data");
         Get.to(Verification(email: emailController.text.trim(),));
         Get.snackbar("Success", "Registration Successful");
      }
      else {
        print("Sign UP Error Body: ${response.body}");
        Get.snackbar("Registration Failed", "Something went wrong");
      }
    } catch (e) {
      isLoading.value = false;
      print("Sign UP Exception: $e");
      Get.snackbar("Error", e.toString());
    }
  }

  @override
  void onClose() {
    nameController.dispose();
    emailController.dispose();
    passWordController.dispose();
    confirmPassWordController.dispose();
    super.onClose();
  }
}
