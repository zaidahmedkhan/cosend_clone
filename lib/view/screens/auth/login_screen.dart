import 'package:cosend_clone/core/constants/app_assets.dart';
import 'package:cosend_clone/core/constants/app_colors.dart';
import 'package:cosend_clone/core/constants/app_strings.dart';
import 'package:cosend_clone/view/screens/auth/signup_screen.dart';
import 'package:cosend_clone/view/widgets/custom_bottom_nav_bar.dart';
import 'package:cosend_clone/view/widgets/custom_button.dart';
import 'package:cosend_clone/view/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            AppStrings.login,
            style: TextStyle(
                fontSize: 28.sp,
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
                SizedBox(height: 15.h),
                const CustomTextfield(
                    hintText: "Password", prefixIconPath: AppImages.password),
                SizedBox(height: 45.h),
                CustomButton(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const CustomBottomNavBar()));
                  },
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
                      AppStrings.dontHaveAnAccount,
                      style: TextStyle(
                          fontSize: 12.sp, fontWeight: FontWeight.w400),
                    ),
                    SizedBox(width: 5.w),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const SignupScreen()));
                      },
                      child: Text(
                        AppStrings.createNow,
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
