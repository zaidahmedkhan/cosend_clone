import 'package:cosend_clone/core/constants/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomTextfield extends StatelessWidget {
  const CustomTextfield(
      {super.key,
      required this.hintText,
      this.borderRadius = 6,
      required this.prefixIconPath,
      this.height = 64.51,
      this.width = 396});
  final String hintText;
  final double borderRadius;
  final double height;
  final double width;
  final String prefixIconPath;

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: BoxConstraints(minHeight: height, minWidth: width),
      child: TextField(
          decoration: InputDecoration(
              contentPadding: EdgeInsets.only(left: 10.w),
              prefixIcon: Padding(
                padding: EdgeInsets.only(right: 10.w),
                child: Container(
                  height: 64.51,
                  width: 60,
                  decoration: const BoxDecoration(
                      border: Border(
                          right: BorderSide(
                              color: AppColors.textFieldBorderColor))),
                  child: Center(
                    child: Image.asset(
                      prefixIconPath,
                      height: 24.h,
                      width: 24.w,
                    ),
                  ),
                ),
              ),
              hintText: hintText,
              hintStyle: const TextStyle(color: AppColors.hintTextColor),
              enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(borderRadius.r),
                  borderSide:
                      const BorderSide(color: AppColors.textFieldBorderColor)),
              focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(borderRadius.r),
                  borderSide: const BorderSide(
                      color: AppColors.textFieldBorderColor)))),
    );
  }
}
