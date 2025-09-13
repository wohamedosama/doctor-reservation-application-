import 'package:doctor_reservation_app/core/routing/routes.dart';
import 'package:doctor_reservation_app/features/auth/presentation/screens/login_screen.dart';
import 'package:doctor_reservation_app/features/onboarding/on_boarding_screen.dart';
import 'package:flutter/material.dart';

class AppRouter {
  Route onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.onBoardingScreen:
        return MaterialPageRoute(
          builder: (context) => const OnBoardingScreen(),
        );
      case Routes.loginScreen:
        return MaterialPageRoute(
          builder: (_) => const LoginScreen(),
        );
      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(
              child: Text('No route found ${settings.name}'),
            ),
          ),
        );
    }
  }
}
