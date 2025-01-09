import 'package:cosend_clone/core/constants/app_colors.dart';
import 'package:cosend_clone/core/constants/app_strings.dart';
import 'package:flutter/material.dart';

class BirthdayTextField extends StatelessWidget {
  const BirthdayTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 396,
      height: 78,
      decoration: BoxDecoration(
          border: Border.all(color: AppColors.textFieldBorderColor)),
      child: Column(
        children: [
          const Row(
            children: [
              SizedBox(width: 20),
              Text(
                AppStrings.birthday,
                style: TextStyle(fontSize: 12, fontWeight: FontWeight.w700),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const SizedBox(width: 45),
              const Expanded(
                child: TextField(
                  textAlign: TextAlign.center,
                  decoration: InputDecoration(
                      hintText: AppStrings.day,
                      focusedBorder: UnderlineInputBorder()),
                ),
              ),
              const SizedBox(width: 20),
              Container(
                height: 33,
                width: 2,
                color: AppColors.textFieldBorderColor,
              ),
              const SizedBox(width: 20),
              const Expanded(
                child: TextField(
                  textAlign: TextAlign.center,
                  decoration: InputDecoration(
                      hintText: AppStrings.month,
                      focusedBorder: UnderlineInputBorder()),
                ),
              ),
              const SizedBox(width: 20),
              Container(
                height: 33,
                width: 2,
                color: AppColors.textFieldBorderColor,
              ),
              const SizedBox(width: 20),
              const Expanded(
                child: TextField(
                  textAlign: TextAlign.center,
                  decoration: InputDecoration(
                      hintText: AppStrings.year,
                      focusedBorder: UnderlineInputBorder()),
                ),
              ),
              const SizedBox(width: 45),
            ],
          ),
        ],
      ),
    );
  }
}
