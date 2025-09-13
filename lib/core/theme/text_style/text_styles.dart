import 'package:doctor_reservation_app/core/theme/color/app_color.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TextStyles {
  static TextStyle font24BlackBold = TextStyle(
    fontSize: 24.sp,
    color: AppColor.blackColor,
    fontWeight: FontWeight.bold,
  );
  static TextStyle font32PrimayBold = TextStyle(
    fontSize: 32.sp,
    color: AppColor.primaryColor100,
    fontWeight: FontWeight.bold,
  );
  static TextStyle font12GrayRegular = TextStyle(
    fontSize: 12.sp,
    color: AppColor.grayColor30,
    fontWeight: FontWeight.w400,
  );
  static TextStyle font18WhiteSemiBold = TextStyle(
    fontSize: 18.sp,
    color: AppColor.whiteColor,
    fontWeight: FontWeight.w600,
  );
}
