import 'package:cosend_clone/core/constants/app_assets.dart';
import 'package:cosend_clone/core/constants/app_colors.dart';
import 'package:cosend_clone/view/screens/bottom_nav_bar/add_events.dart';
import 'package:cosend_clone/view/screens/bottom_nav_bar/chat_screen.dart';
import 'package:cosend_clone/view/screens/bottom_nav_bar/favorites_screen.dart';
import 'package:cosend_clone/view/screens/bottom_nav_bar/home_screen.dart';
import 'package:cosend_clone/view/screens/bottom_nav_bar/profile_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomBottomNavBar extends StatefulWidget {
  const CustomBottomNavBar({super.key});

  @override
  State<CustomBottomNavBar> createState() => _CustomBottomNavBarState();
}

class _CustomBottomNavBarState extends State<CustomBottomNavBar> {
  int pageIndex = 0;
  final pages = [
    const HomeScreen(),
    const FavoritesScreen(),
    const AddEventsScreen(),
    const ChatScreen(),
    const ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[pageIndex],
      bottomNavigationBar: Material(
        elevation: 1.0,
        child: Container(
          height: 85.h,
          decoration: const BoxDecoration(
              border: Border(top: BorderSide(color: AppColors.hintTextColor))),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                children: [
                  IconButton(
                      enableFeedback: false,
                      onPressed: () {
                        setState(() {
                          pageIndex = 0;
                        });
                      },
                      icon: pageIndex == 0
                          ? Image.asset(
                              AppImages.homeIcon,
                              color: AppColors.darkPink,
                              height: 24.h,
                              width: 24.w,
                            )
                          : Image.asset(
                              AppImages.homeIcon,
                              color: AppColors.blackColor,
                              height: 24.h,
                              width: 24.w,
                            )),
                  Text(
                    "Home",
                    style: TextStyle(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w400,
                      color: pageIndex == 0
                          ? AppColors.darkPink
                          : AppColors.blackColor,
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  IconButton(
                      enableFeedback: false,
                      onPressed: () {
                        setState(() {
                          pageIndex = 1;
                        });
                      },
                      icon: pageIndex == 1
                          ? Image.asset(
                              AppImages.heartIcon,
                              color: AppColors.darkPink,
                              height: 24.h,
                              width: 24.w,
                            )
                          : Image.asset(
                              AppImages.heartIcon,
                              color: AppColors.blackColor,
                              height: 24.h,
                              width: 24.w,
                            )),
                  Text(
                    "Favorites",
                    style: TextStyle(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w400,
                      color: pageIndex == 1
                          ? AppColors.darkPink
                          : AppColors.blackColor,
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  IconButton(
                      enableFeedback: false,
                      onPressed: () {
                        setState(() {
                          pageIndex = 2;
                        });
                      },
                      icon: pageIndex == 2
                          ? Image.asset(
                              AppImages.addEventIcon,
                              color: AppColors.darkPink,
                              height: 24.h,
                              width: 24.w,
                            )
                          : Image.asset(
                              AppImages.addEventIcon,
                              color: AppColors.blackColor,
                              height: 24.h,
                              width: 24.w,
                            )),
                  Text(
                    "Add Event",
                    style: TextStyle(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w400,
                      color: pageIndex == 2
                          ? AppColors.darkPink
                          : AppColors.blackColor,
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  IconButton(
                      enableFeedback: false,
                      onPressed: () {
                        setState(() {
                          pageIndex = 3;
                        });
                      },
                      icon: pageIndex == 3
                          ? Image.asset(
                              AppImages.messageIcon,
                              color: AppColors.darkPink,
                              height: 24.h,
                              width: 24.w,
                            )
                          : Image.asset(
                              AppImages.messageIcon,
                              color: AppColors.blackColor,
                              height: 24.h,
                              width: 24.w,
                            )),
                  Text(
                    "Chat",
                    style: TextStyle(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w400,
                      color: pageIndex == 3
                          ? AppColors.darkPink
                          : AppColors.blackColor,
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  IconButton(
                      enableFeedback: false,
                      onPressed: () {
                        setState(() {
                          pageIndex = 4;
                        });
                      },
                      icon: pageIndex == 4
                          ? Image.asset(
                              AppImages.profileIcon,
                              color: AppColors.darkPink,
                              height: 24.h,
                              width: 24.w,
                            )
                          : Image.asset(
                              AppImages.profileIcon,
                              color: AppColors.blackColor,
                              height: 24.h,
                              width: 24.w,
                            )),
                  Text(
                    "Profile",
                    style: TextStyle(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w400,
                      color: pageIndex == 4
                          ? AppColors.darkPink
                          : AppColors.blackColor,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
