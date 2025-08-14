import 'package:design/core/constants/colors.dart';
import 'package:design/core/constants/text_styles.dart';
import 'package:design/main.dart';
import 'package:design/screens/profile/widgets/Three_images_row.dart';
import 'package:design/screens/profile/widgets/profile_menu.dart';
import 'package:design/screens/profile/widgets/toggle_row_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

/*
class ProfilePageView extends StatelessWidget {
  const ProfilePageView({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(vertical: 10.h, horizontal: 20.w),
            child: Row(
              children: [
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => MainScreen()),
                    );
                  },
                  child: Container(
                    width: 40.w,
                    height: 40.h,
                    decoration: BoxDecoration(),
                    child: Image.asset(
                      'assets/images/back_icon.png',
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                SizedBox(
                  width: 4.w,
                ),
                Text(
                  "PROFILE",
                  style: AppTextStyles.regular18.copyWith(
                    fontFamily: 'OperaWestern',
                  ),
                ),
              ],
            ),
          ),
          Divider(
            // height: 30,
            thickness: 6.r,
            color: Color(0xFFF5F4F4),
            // indent: 52, // Align with text (icon width + spacing)
          ),
          SizedBox(
            height: 16.h,
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 10.w),
            height: 190.h,
            width: 408.w,
            decoration: BoxDecoration(
              // color: Colors.red,
              borderRadius: BorderRadius.circular(10.r),
              border:
                  Border.all(color: const Color.fromARGB(133, 216, 216, 216)),
            ),
            child: Column(
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 15.w, top: 23.h),
                      child: Container(
                        height: 60.h,
                        width: 60.w,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Color(0xffD9D9D9),
                        ),
                        // color: Colors.red),
                        child: Center(
                            child: Text(
                          'A',
                          style: TextStyle(
                              fontSize: 24.sp, fontWeight: FontWeight.w700),
                        )),
                      ),
                    ),
                    SizedBox(
                      width: 12.w,
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 23.h),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                              child: Text('Ahmed Magdy',
                                  style: AppTextStyles.bold18)),
                          Expanded(
                            child: Row(
                              children: [
                                SizedBox(
                                  height: 30.h,
                                  width: 30.w,
                                  child: Image.asset(
                                    'assets/images/Egypt.png',
                                    fit: BoxFit.fill,
                                  ),
                                ),
                                SizedBox(
                                  width: 10.w,
                                ),
                                Text('012-000-00-663',
                                    style: AppTextStyles.semi18),
                              ],
                            ),
                          ),
                          Center(
                            child: Expanded(
                              child: Text('ahmed@paradigmegypt.com',
                                  style: AppTextStyles.semi18
                                      .copyWith(color: AppColors.secondary)),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Spacer(),
                    Padding(
                      padding: EdgeInsets.only(right: 10.w, top: 10.h),
                      child: InkWell(
                        onTap: () {
                          // Method to Logout
                        },
                        child: Expanded(
                          child: Row(
                            children: [
                              SizedBox(
                                height: 25.h,
                                width: 25.w,
                                child: Image.asset(
                                  'assets/images/Logout.png',
                                  fit: BoxFit.cover,
                                ),
                              ),
                              SizedBox(
                                width: 5.w,
                              ),
                              Text('Logout',
                                  style: AppTextStyles.semi18
                                      .copyWith(color: AppColors.secondary)),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 24.h,
                ),
                InkWell(
                  onTap: () {},
                  child: Expanded(
                    child: Container(
                      alignment: Alignment.center,
                      width: 320.w,
                      height: 40.h,
                      decoration: BoxDecoration(
                          color: AppColors.primary,
                          borderRadius: BorderRadius.circular(4)),
                      child:
                          Text('Update Profile', style: AppTextStyles.bold18),
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 30.h),
          ThreeImagesRow(),
          Divider(
            height: 28.h,
            thickness: 11.r,
            color: Color(0xFFF5F4F4),
            // indent: 52, // Align with text (icon width + spacing)
          ),
          SizedBox(height: 30.h),
          ProfileMenu(),
          Divider(
            height: 28.h,
            thickness: 11.r,
            color: Color(0xFFF5F4F4),
            // indent: 52, // Align with text (icon width + spacing)
          ),
          ToggleSettings(),
        ],
      ),
    );
  }
}


*/
class ProfilePageView extends StatelessWidget {
  const ProfilePageView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            // Top bar
            Padding(
              padding: EdgeInsets.only(left: 17.w, top: 10.h, bottom: 10.h),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (_) => MainScreen()),
                      );
                    },
                    child: Padding(
                      padding: EdgeInsets.only(top: 11.h),
                      child: SizedBox(
                        width: 40.w,
                        height: 40.w, // keep square
                        child: Image.asset('assets/images/back_icon.png',
                            fit: BoxFit.fill),
                      ),
                    ),
                  ),
                  SizedBox(width: 8.w),
                  Text(
                    "PROFILE",
                    style: AppTextStyles.regular18
                        .copyWith(fontFamily: 'OperaWestern'),
                  ),
                ],
              ),
            ),

            Divider(thickness: 6.r, color: Color(0xFFF5F4F4)),

            SizedBox(height: 16.h),

            // Profile Card
            Container(
              margin: EdgeInsets.symmetric(horizontal: 10.w),
              padding: EdgeInsets.all(10.w),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.r),
                border: Border.all(color: Color.fromARGB(133, 216, 216, 216)),
              ),
              child: Column(
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Avatar
                      Padding(
                        padding: EdgeInsets.only(
                          left: 15.w,
                          top: 23.h,
                          right: 12.w,
                        ),
                        child: Container(
                          height: 70.w,
                          width: 70.w,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Color(0xffD9D9D9),
                          ),
                          child: Center(
                            child: Text(
                              'A',
                              style: TextStyle(
                                  fontSize: 24.sp, fontWeight: FontWeight.w700),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(width: 8.w),

                      // Name + Contact
                      Expanded(
                        child: Padding(
                          padding: EdgeInsets.only(top: 23.h),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              FittedBox(
                                child: Text('Ahmed Magdy',
                                    style: AppTextStyles.bold18
                                        .copyWith(fontSize: 16.sp)),
                              ),
                              SizedBox(height: 6.h),
                              Row(
                                children: [
                                  SizedBox(
                                    height: 30.w,
                                    width: 30.w,
                                    child: Image.asset(
                                        'assets/images/Egypt.png',
                                        fit: BoxFit.fill),
                                  ),
                                  SizedBox(width: 10.w),
                                  Text('012-000-00-663',
                                      style: AppTextStyles.semi18
                                          .copyWith(fontSize: 16.sp)),
                                ],
                              ),
                              SizedBox(height: 5.h),
                              FittedBox(
                                child: Text(
                                  'ahmed@paradigmegypt.com',
                                  style: AppTextStyles.semi18.copyWith(
                                      color: AppColors.secondary,
                                      fontSize: 16.sp),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),

                      // Logout Button
                      InkWell(
                        onTap: () {},
                        child: Row(
                          children: [
                            SizedBox(
                              height: 25.w,
                              width: 25.w,
                              child: Image.asset('assets/images/Logout.png',
                                  fit: BoxFit.cover),
                            ),
                            SizedBox(width: 5.w),
                            Text('Logout',
                                style: AppTextStyles.semi18
                                    .copyWith(color: AppColors.secondary)),
                          ],
                        ),
                      ),
                    ],
                  ),

                  SizedBox(height: 24.h),

                  // Update Profile Button
                  SizedBox(
                    width: 340.w, // fills parent
                    height: 40.h,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xffF6B318),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(4.r)),
                      ),
                      onPressed: () {},
                      child: Text(
                        'Update Profile',
                        style:
                            AppTextStyles.bold18.copyWith(color: Colors.black),
                      ),
                    ),
                  ),
                  SizedBox(height: 24.h),
                ],
              ),
            ),

            SizedBox(height: 30.h),
            ThreeImagesRow(),
            Divider(thickness: 11.r, color: Color(0xFFF5F4F4), height: 28.h),
            SizedBox(height: 30.h),
            ProfileMenu(),
            Divider(thickness: 11.r, color: Color(0xFFF5F4F4), height: 28.h),
            ToggleSettings(),
          ],
        ),
      ),
    );
  }
}
