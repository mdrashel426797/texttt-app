import 'package:get/get.dart';
import 'package:test_app/core/ragistasion/SaveContinue.dart';
import 'package:test_app/core/Loging/login.dart';
import 'package:test_app/core/ragistasion/allow_location.dart';
import 'package:test_app/core/ragistasion/grups.dart';
import 'package:test_app/core/ragistasion/ragistrasion.dart';
import 'package:test_app/core/forgetpassword/faid_screen.dart';
import 'package:test_app/core/ragistasion/Homepage.dart';
import 'package:test_app/core/ragistasion/sattingpage.dart';
import 'package:test_app/core/ragistasion/sefty_grup.dart';
import 'package:test_app/core/splash_screen/splash_screen.dart';
import 'package:test_app/core/splash_screen/welcome_page_one.dart';
import 'package:test_app/core/splash_screen/welcomepage_two.dart';
import 'package:test_app/core/splash_screen/welcomepagetree.dart';

import '../forgetpassword/verification.dart' show Verification;

class AppRoute{
  static const String splashScreen = "/splashScreen";
  static const String welcomePageOne = "/welcomePageOne";
  static const String welcomepageTwo = "/welcomepageTwo";
  static const String welcomepagetree = "/welcomepagetree";
  static const String login = "/login";
  static const String ragistrasion = "/ragistrasion";
  static const String savecontinue = "/savecontinue";
  static const String faidScreen = "/faidScreen";
  // static const String verification = "/verification";
  static const String allowLocation = "/allowLocation";
  static const String homepage = "/homepage";
  static const String grups = "/grups";
  static const String sattingpage = "/sattingpage";
  static const String seftyGrup = "/seftyGrup";



  static List<GetPage> route = [
    GetPage(name: splashScreen, page: () => SplashScreen()),
    GetPage(name: welcomePageOne, page: () => WelcomePageOne()),
    GetPage(name: welcomepageTwo, page: () => WelcomepageTwo()),
    GetPage(name: welcomepagetree, page: () => Welcomepagetree()),
    GetPage(name: login, page: () => Login()),
    GetPage(name: ragistrasion, page: () => Ragistrasion()),
    GetPage(name: savecontinue, page: () => Savecontinue()),
    GetPage(name: faidScreen, page: () => FaidScreen()),
    // GetPage(name: verification, page: () => Verification()),
    GetPage(name: allowLocation, page: () => AllowLocation()),
    GetPage(name: homepage, page: () => Homepage()),
    GetPage(name: grups, page: () => Grups()),
    GetPage(name: sattingpage, page: () => Sattingpage()),
    GetPage(name: seftyGrup, page: () => SeftyGrup()),

  ];

}