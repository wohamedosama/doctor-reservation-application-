import 'package:doctor_reservation_app/core/theme/images/app_images.dart';
import 'package:doctor_reservation_app/core/theme/text_style/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class DocLogoAndName extends StatelessWidget {
  const DocLogoAndName({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SvgPicture.asset(
          Assets.doctorLogo,
          width: 40.w,
          height: 40.h,
        ),
        SizedBox(width: 10.w),
        Text('Docdoc', style: TextStyles.font24BlackBold),
      ],
    );
  }
}
