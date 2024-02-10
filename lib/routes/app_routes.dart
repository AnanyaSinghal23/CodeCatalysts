import 'package:flutter/material.dart';
import 'package:flutter_1/presentation/app_navigation_screen/app_navigation_screen.dart';
import 'package:flutter_1/presentation/otp_screen/otp_screen.dart';
import 'package:flutter_1/presentation/sign_in_screen/sign_in_screen.dart';
import 'package:flutter_1/presentation/sign_up_screen/sign_up_screen.dart';
import 'package:flutter_1/presentation/verify_screen/verify_screen.dart';

class AppRoutes {
  static const String signUpScreen = '/sign_up_screen';

  static const String verifyScreen = '/verify_screen';

  static const String signInScreen = '/sign_in_screen';

  static const String otpScreen = '/otp_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static Map<String, WidgetBuilder> routes = {
    signUpScreen: (context) => SignUpScreen(),
    verifyScreen: (context) => VerifyScreen(),
    signInScreen: (context) => SignInScreen(),
    otpScreen: (context) => OtpScreen(),
    appNavigationScreen: (context) => AppNavigationScreen()
  };
}
