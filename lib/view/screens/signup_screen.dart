import 'package:cosend_clone/core/constants/app_assets.dart';
import 'package:cosend_clone/core/constants/app_colors.dart';
import 'package:cosend_clone/core/constants/app_strings.dart';
import 'package:cosend_clone/view/screens/login_screen.dart';
import 'package:cosend_clone/view/widgets/birthday_text_field.dart';
import 'package:cosend_clone/view/widgets/custom_button.dart';
import 'package:cosend_clone/view/widgets/custom_text_field.dart';
import 'package:cosend_clone/view/widgets/upload_photo.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            AppStrings.createProfile,
            style: TextStyle(
                fontSize: 28.sp,
                fontWeight: FontWeight.w500,
                color: AppColors.darkPink),
          ),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 10.h),
            child: Column(
              children: [
                const UploadPhotoWidget(),
                SizedBox(height: 15.h),
                const CustomTextfield(
                    hintText: "Enter your name",
                    prefixIconPath: AppImages.personIcon),
                SizedBox(height: 10.h),
                const CustomTextfield(
                    hintText: "Enter your username",
                    prefixIconPath: AppImages.userName),
                SizedBox(height: 10.h),
                const CustomTextfield(
                    hintText: "Enter your email",
                    prefixIconPath: AppImages.emailIcon),
                SizedBox(height: 10.h),
                const CustomTextfield(
                    hintText: "Enter your location",
                    prefixIconPath: AppImages.location),
                SizedBox(height: 10.h),
                const CustomTextfield(
                    hintText: "Enter your password",
                    prefixIconPath: AppImages.password),
                SizedBox(height: 15.h),
                const BirthdayTextField(),
                const SizedBox(height: 65),
                CustomButton(
                  onTap: () {},
                  width: 396.w,
                  height: 64.51.h,
                  title: "Log In",
                  textColor: AppColors.whiteColor,
                ),
                SizedBox(height: 10.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      AppStrings.alreadyHaveAnAccount,
                      style: TextStyle(
                          fontSize: 12.sp, fontWeight: FontWeight.w400),
                    ),
                    SizedBox(width: 5.w),
                    GestureDetector(
                      onTap: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const LoginScreen())),
                      child: Text(
                        AppStrings.login,
                        style: TextStyle(
                          fontSize: 12.sp,
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
