import 'package:cosend_clone/core/constants/app_assets.dart';
import 'package:cosend_clone/core/constants/app_colors.dart';
import 'package:flutter/material.dart';

class UploadPhotoWidget extends StatelessWidget {
  const UploadPhotoWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 113,
      height: 113,
      decoration: const BoxDecoration(
          shape: BoxShape.circle, color: AppColors.textFieldBorderColor),
      child: Center(
        child: Image.asset(
          AppImages.uploadPhoto,
          height: 28,
          width: 28,
          color: Colors.black,
        ),
      ),
    );
  }
}
