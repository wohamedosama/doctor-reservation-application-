import 'package:doctor_reservation_app/core/theme/color/app_color.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColor.fillRed,
      ),
      body: const Center(
        child: Text(
          'Login Screen',
        ),
      ),
    );
  }
}
