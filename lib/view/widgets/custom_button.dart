import 'package:cosend_clone/core/constants/app_colors.dart';
import 'package:flutter/material.dart';

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
      width: width,
      height: height,
      child: ElevatedButton(
        onPressed: onTap,
        style: ElevatedButton.styleFrom(
            backgroundColor: buttonColor,
            textStyle: TextStyle(color: buttonColor),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(borderRadius))),
        child: Text(
          title,
          style: TextStyle(
              color: textColor, fontSize: 16, fontWeight: FontWeight.w400),
        ),
      ),
    );
  }
}
