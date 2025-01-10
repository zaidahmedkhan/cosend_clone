import 'package:cosend_clone/core/constants/app_assets.dart';
import 'package:cosend_clone/core/constants/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class UploadPhotoWidget extends StatelessWidget {
  const UploadPhotoWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 113.w,
      height: 113.h,
      decoration: const BoxDecoration(
          shape: BoxShape.circle, color: AppColors.textFieldBorderColor),
      child: Center(
        child: Image.asset(
          AppImages.uploadPhoto,
          height: 28.h,
          width: 28.w,
          color: Colors.black,
        ),
      ),
    );
  }
}
