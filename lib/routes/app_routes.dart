import 'package:flutter/material.dart';
import '../core/app_export.dart';
import '../presentation/onboarding_screen/onboarding_screen.dart';
import '../presentation/onboarding_screen_one_screen/onboarding_screen_one_screen.dart';
import '../presentation/onboarding_screen_two_screen/onboarding_screen_two_screen.dart'; // ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class AppRoutes {
  static const String onboardingScreen = '/onboarding_screen';

  static const String onboardingScreenOneScreen =
      '/onboarding_screen_one_screen';

  static const String onboardingScreenTwoScreen =
      '/onboarding_screen_two_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static const String initialRoute = '/initialRoute';

  static Map<String, WidgetBuilder> routes = {
    onboardingScreen: (context) => OnboardingScreen(),
    onboardingScreenOneScreen: (context) => OnboardingScreenOneScreen(),
    onboardingScreenTwoScreen: (context) => OnboardingScreenTwoScreen(),
    initialRoute: (context) => OnboardingScreen()
  };
}
