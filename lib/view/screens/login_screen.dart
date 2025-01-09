import 'package:cosend_clone/core/constants/app_assets.dart';
import 'package:cosend_clone/core/constants/app_colors.dart';
import 'package:cosend_clone/core/constants/app_strings.dart';
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
          title: const Text(
            AppStrings.login,
            style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.w500,
                color: AppColors.darkPink),
          ),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 160),
            child: Column(
              children: [
                const CustomTextfield(
                    hintText: "Enter your email",
                    prefixIconPath: AppImages.emailIcon),
                const SizedBox(height: 15),
                const CustomTextfield(
                    hintText: "Password", prefixIconPath: AppImages.password),
                const SizedBox(height: 45),
                CustomButton(
                  onTap: () {},
                  width: 396,
                  height: 64.51,
                  title: "Log In",
                  textColor: AppColors.whiteColor,
                ),
                const SizedBox(height: 10),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      AppStrings.dontHaveAnAccount,
                      style:
                          TextStyle(fontSize: 12, fontWeight: FontWeight.w400),
                    ),
                    SizedBox(width: 5),
                    Text(
                      AppStrings.createNow,
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        color: AppColors.darkPink,
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
        ));
  }
}
