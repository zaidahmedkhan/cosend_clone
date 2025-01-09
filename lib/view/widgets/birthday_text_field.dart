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
      child: const Column(
        children: [
          Row(
            children: [
              SizedBox(width: 20),
              Text(AppStrings.birthday),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(width: 25),
              Expanded(
                child: TextField(
                  decoration: InputDecoration(hintText: "Day"),
                ),
              ),
              Expanded(
                child: TextField(
                  decoration: InputDecoration(hintText: "Day"),
                ),
              ),
              Expanded(
                child: TextField(
                  decoration: InputDecoration(hintText: "Day"),
                ),
              ),
              SizedBox(width: 25),
            ],
          )
        ],
      ),
    );
  }
}
