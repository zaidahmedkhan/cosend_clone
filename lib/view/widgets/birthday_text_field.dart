import 'package:cosend_clone/core/constants/app_colors.dart';
import 'package:cosend_clone/core/constants/app_strings.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BirthdayTextField extends StatelessWidget {
  const BirthdayTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 396.w,
      height: 95.h,
      decoration: BoxDecoration(
          border: Border.all(color: AppColors.textFieldBorderColor)),
      child: Column(
        children: [
          SizedBox(height: 5.h),
          Row(
            children: [
              SizedBox(width: 20.w),
              Text(
                AppStrings.birthday,
                style: TextStyle(fontSize: 12.sp, fontWeight: FontWeight.w700),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(width: 40.w),
              const Expanded(
                child: TextField(
                  textAlign: TextAlign.center,
                  decoration: InputDecoration(
                      hintText: AppStrings.day,
                      focusedBorder: UnderlineInputBorder()),
                ),
              ),
              SizedBox(width: 20.w),
              Container(
                height: 33.h,
                width: 2.w,
                color: AppColors.textFieldBorderColor,
              ),
              SizedBox(width: 20.w),
              const Expanded(
                child: TextField(
                  textAlign: TextAlign.center,
                  decoration: InputDecoration(
                      hintText: AppStrings.month,
                      focusedBorder: UnderlineInputBorder()),
                ),
              ),
              SizedBox(width: 20.w),
              Container(
                height: 33.h,
                width: 2.w,
                color: AppColors.textFieldBorderColor,
              ),
              SizedBox(width: 20.w),
              const Expanded(
                child: TextField(
                  textAlign: TextAlign.center,
                  decoration: InputDecoration(
                      hintText: AppStrings.year,
                      focusedBorder: UnderlineInputBorder()),
                ),
              ),
              SizedBox(width: 40.w),
            ],
          ),
        ],
      ),
    );
  }
}
