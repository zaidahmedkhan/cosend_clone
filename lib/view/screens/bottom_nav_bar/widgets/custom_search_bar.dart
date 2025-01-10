import 'package:cosend_clone/core/constants/app_assets.dart';
import 'package:cosend_clone/core/constants/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomSearchBar extends StatelessWidget {
  const CustomSearchBar(
      {super.key,
      required this.hintText,
      required this.borderRadius,
      this.fillColor = AppColors.lightGrey});

  final String hintText;
  final double borderRadius;
  final Color fillColor;

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
          prefixIcon: Image.asset(
            AppImages.personIcon,
            height: 24.h,
            width: 24.w,
          ),
          hintText: hintText,
          hintStyle: TextStyle(
              color: AppColors.hintTextColor,
              fontSize: 16.sp,
              fontWeight: FontWeight.w400),
          fillColor: fillColor,
          filled: true,
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(borderRadius.r),
              borderSide:
                  const BorderSide(color: AppColors.textFieldBorderColor)),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(borderRadius.r),
              borderSide:
                  const BorderSide(color: AppColors.textFieldBorderColor))),
    );
  }
}
