import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:test_app/firebase_options.dart';
import 'core/route/route.dart';
import 'core/splash_screen/splash_screen.dart';

@pragma('vm:entry-point')
Future<void> _firebaseMessagingBackgroundHandler(RemoteMessage message) async {
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
}

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  try {
    if (Firebase.apps.isEmpty) {
      await Firebase.initializeApp(
        options: DefaultFirebaseOptions.currentPlatform,
      );
    }

    FirebaseMessaging messaging = FirebaseMessaging.instance;
    await messaging.requestPermission(
      alert: true,
      badge: true,
      sound: true,
    );

    FirebaseMessaging.onBackgroundMessage(_firebaseMessagingBackgroundHandler);

  } catch (e) {
    print("Firebase initialization error: $e");
  }

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (_, child) {
        return GetMaterialApp(
          debugShowCheckedModeBanner: false,
          home: const SplashScreen(),
          defaultTransition: Transition.fadeIn,
          transitionDuration: const Duration(milliseconds: 500),
          getPages: AppRoute.route,
        );
      },
    );
  }
}





















// class UserChangeController extends GetxController{
//
//   RxString username = "Dell".obs;
//   void onTapChange() {
//     if(username.value == "Dell") {
//       username.value = "HP";
//     } else{
//       username.value = "Dell";
//     }
//   }
// }
//
//
//
//
//
// class UserChange extends StatelessWidget {
//    UserChange({super.key});
//
//   final UserChangeController controller = Get.put(UserChangeController());
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("User Change "),
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//
//             Obx(()=> Text("User name; ${controller.username.value}", style: TextStyle(
//                 fontWeight: FontWeight.w600,
//                 color: Colors.black,
//                 fontSize: 20
//             ),),),
//
//             SizedBox(height: 100,),
//
//
//             ElevatedButton(onPressed: (){
//               controller.onTapChange();
//               print(controller.username);
//             }, child: Text("Change"),
//             ),
//
//
//           ],
//         ),
//       ),
//     );
//   }
// }
//
