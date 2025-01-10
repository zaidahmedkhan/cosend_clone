import 'package:cosend_clone/core/constants/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.onTap,
    required this.width,
    required this.height,
    this.buttonColor = AppColors.primaryButton,
    required this.title,
    required this.textColor,
    this.borderRadius = 6,
  });

  final Function() onTap;
  final double width;
  final double height;
  final Color buttonColor;
  final String title;
  final Color textColor;
  final double borderRadius;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width.w,
      height: height.h,
      child: ElevatedButton(
        onPressed: onTap,
        style: ElevatedButton.styleFrom(
            backgroundColor: buttonColor,
            textStyle: TextStyle(color: buttonColor),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(borderRadius.r))),
        child: Text(
          title,
          style: TextStyle(
              color: textColor, fontSize: 16.sp, fontWeight: FontWeight.w400),
        ),
      ),
    );
  }
}
