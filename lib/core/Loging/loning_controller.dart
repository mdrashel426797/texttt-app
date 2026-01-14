import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:test_app/core/route/route.dart';
import 'package:firebase_messaging/firebase_messaging.dart';

class LoningController extends GetxController {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();







  /*
 Base Url: http://10.0.20.117:5021/api/v1/auth/otp/login
body Data: {
    "email": "pakistan@gmail.com",
    "password": "123456",
    "fcmToken":"sdafs"

}
 */




  Future<void> logIngController() async {

    try{

      final respons = await http.post(Uri.parse("http://10.0.20.117:5021/api/v1/auth/otp/login"),
        headers: {
          "Content-Type": "application/json",
        },
          body : jsonEncode({
          "email": emailController.text.trim(),
          "password": passwordController.text.trim(),
          "isAgreeWithTerms": true,
          }),
    );

      if(respons.statusCode==201){
       // Get.toNamed(AppRoute.homepage);
        print(respons.body);
    }
    else {
      Get.snackbar("plz type your email", "Something went wrong");
    }

    }catch(e){
      print(e);
      Get.snackbar("error", "Something went wrong");
    }
   }

  @override
  void onClose() {
    emailController.dispose();
    passwordController.dispose();
    super.onClose();
  }
}