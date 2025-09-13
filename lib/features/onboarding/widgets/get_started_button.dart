import 'package:doctor_reservation_app/core/helpers/extension.dart';
import 'package:doctor_reservation_app/core/routing/routes.dart';
import 'package:doctor_reservation_app/core/theme/color/app_color.dart';
import 'package:doctor_reservation_app/core/theme/text_style/text_styles.dart';
import 'package:flutter/material.dart';

class GetStartedButton extends StatelessWidget {
  const GetStartedButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24.0),
      child: TextButton(
        style: ButtonStyle(
          minimumSize: const WidgetStatePropertyAll(Size(double.infinity, 52)),
          tapTargetSize: MaterialTapTargetSize.shrinkWrap,
          shape: WidgetStateProperty.all(
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(16))),
          backgroundColor: WidgetStateProperty.all(AppColor.primaryColor100),
        ),
        onPressed: () => context.pushNamed(Routes.loginScreen),
        child: Text(
          'Get Started',
          style: TextStyles.font18WhiteSemiBold,
        ),
      ),
    );
  }
}
