import 'package:cosend_clone/core/constants/app_assets.dart';
import 'package:cosend_clone/core/constants/app_colors.dart';
import 'package:cosend_clone/view/widgets/birthday_text_field.dart';
import 'package:cosend_clone/view/widgets/custom_button.dart';
import 'package:cosend_clone/view/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Login Screen"),
      ),
      body: Center(
        child: Column(
          children: [
            const CustomTextfield(
              hintText: "Enter your name",
              prefixIconPath: AppImages.personIcon,
              borderRadius: 6,
            ),
            const SizedBox(height: 50),
            CustomButton(
              onTap: () {},
              width: 396,
              height: 64.1,
              buttonColor: AppColors.primaryButton,
              title: "Create Account",
              textColor: AppColors.whiteColor,
              borderRdaius: 6,
            ),
            SizedBox(height: 20),
            BirthdayTextField(),
          ],
        ),
      ),
    );
  }
}
