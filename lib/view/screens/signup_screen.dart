import 'package:cosend_clone/core/constants/app_assets.dart';
import 'package:cosend_clone/core/constants/app_colors.dart';
import 'package:cosend_clone/core/constants/app_strings.dart';
import 'package:cosend_clone/view/screens/login_screen.dart';
import 'package:cosend_clone/view/widgets/birthday_text_field.dart';
import 'package:cosend_clone/view/widgets/custom_button.dart';
import 'package:cosend_clone/view/widgets/custom_text_field.dart';
import 'package:cosend_clone/view/widgets/upload_photo.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text(
            AppStrings.createProfile,
            style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.w500,
                color: AppColors.darkPink),
          ),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
            child: Column(
              children: [
                const UploadPhotoWidget(),
                const SizedBox(height: 15),
                const CustomTextfield(
                    hintText: "Enter your name",
                    prefixIconPath: AppImages.personIcon),
                const SizedBox(height: 10),
                const CustomTextfield(
                    hintText: "Enter your username",
                    prefixIconPath: AppImages.userName),
                const SizedBox(height: 10),
                const CustomTextfield(
                    hintText: "Enter your email",
                    prefixIconPath: AppImages.emailIcon),
                const SizedBox(height: 10),
                const CustomTextfield(
                    hintText: "Enter your location",
                    prefixIconPath: AppImages.location),
                const SizedBox(height: 10),
                const CustomTextfield(
                    hintText: "Enter your password",
                    prefixIconPath: AppImages.password),
                const SizedBox(height: 15),
                const BirthdayTextField(),
                const SizedBox(height: 65),
                CustomButton(
                  onTap: () {},
                  width: 396,
                  height: 64.51,
                  title: "Log In",
                  textColor: AppColors.whiteColor,
                ),
                const SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      AppStrings.alreadyHaveAnAccount,
                      style:
                          TextStyle(fontSize: 12, fontWeight: FontWeight.w400),
                    ),
                    const SizedBox(width: 5),
                    GestureDetector(
                      onTap: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const LoginScreen())),
                      child: const Text(
                        AppStrings.login,
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          color: AppColors.darkPink,
                        ),
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
