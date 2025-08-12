import 'package:design/core/constants/colors.dart';
import 'package:design/main.dart';
import 'package:design/screens/profile/widgets/Three_images_row.dart';
import 'package:design/screens/profile/widgets/profile_menu.dart';
import 'package:design/screens/profile/widgets/toggle_row_item.dart';
import 'package:flutter/material.dart';

class ProfilePageView extends StatelessWidget {
  const ProfilePageView({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
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
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(),
                    child: Image.asset(
                      'assets/images/back_icon.png',
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                SizedBox(
                  width: 4,
                ),
                Text(
                  "PROFILE",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                    fontFamily: 'OperaWestern',
                  ),
                ),
              ],
            ),
          ),
          const Divider(
            // height: 30,
            thickness: 6,
            color: Color(0xFFF5F4F4),
            // indent: 52, // Align with text (icon width + spacing)
          ),
          SizedBox(
            height: 16,
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 20),
            height: 190,
            width: 450,
            decoration: BoxDecoration(
              // color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              border:
                  Border.all(color: const Color.fromARGB(133, 216, 216, 216)),
            ),
            child: Column(
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 15, top: 23),
                      child: Container(
                        height: 60,
                        width: 60,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Color(0xffD9D9D9),
                        ),
                        // color: Colors.red),
                        child: Center(
                            child: Text(
                          'A',
                          style: TextStyle(fontSize: 28),
                        )),
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 23),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Ahmed Magdy',
                            style: TextStyle(
                                fontSize: 15,
                                fontFamily: 'TabletGothic',
                                fontWeight: FontWeight.w700),
                          ),
                          Row(
                            children: [
                              SizedBox(
                                height: 30,
                                width: 30,
                                child: Image.asset(
                                  'assets/images/Egypt.png',
                                  fit: BoxFit.fill,
                                ),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                '012-000-00-663',
                                style: TextStyle(
                                  fontSize: 15,
                                  fontFamily: 'TabletGothic',
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            ],
                          ),
                          Center(
                            child: Text(
                              'ahmed@paradigmegypt.com',
                              style: TextStyle(
                                  fontSize: 15,
                                  fontFamily: 'TabletGothic',
                                  fontWeight: FontWeight.w600,
                                  color: Color(0xFF757575)),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Spacer(),
                    Padding(
                      padding: const EdgeInsets.only(right: 10, top: 10),
                      child: InkWell(
                        onTap: () {
                          // Method to Logout
                        },
                        child: Row(
                          children: [
                            SizedBox(
                              height: 25,
                              width: 25,
                              child: Image.asset(
                                'assets/images/Logout.png',
                                fit: BoxFit.cover,
                              ),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              'Logout',
                              style: TextStyle(
                                  fontSize: 15, fontFamily: 'TabletGothic'),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 24,
                ),
                InkWell(
                  onTap: () {},
                  child: Container(
                    alignment: Alignment.center,
                    width: 350,
                    height: 40,
                    decoration: BoxDecoration(
                        color: AppColors.primary,
                        borderRadius: BorderRadius.circular(4)),
                    child: Text(
                      'Update Profile',
                      style: TextStyle(
                        fontFamily: 'TabletGothic',
                        fontSize: 15,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 30),
          ThreeImagesRow(),
          const Divider(
            height: 28,
            thickness: 11,
            color: Color(0xFFF5F4F4),
            // indent: 52, // Align with text (icon width + spacing)
          ),
          SizedBox(height: 30),
          ProfileMenu(),
          const Divider(
            height: 28,
            thickness: 11,
            color: Color(0xFFF5F4F4),
            // indent: 52, // Align with text (icon width + spacing)
          ),
          ToggleSettings(),
        ],
      ),
    );
  }
}
