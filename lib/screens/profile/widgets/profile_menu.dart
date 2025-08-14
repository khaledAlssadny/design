import 'package:design/screens/profile/widgets/profile_menu_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProfileMenu extends StatelessWidget {
  const ProfileMenu({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> menuItems = [
      {
        'imagePath': 'assets/images/MyAddresses.png',
        'title': 'My Addresses',
        'onTap': () {},
      },
      {
        'imagePath': 'assets/images/ChangePassword.png',
        'title': 'Change Password',
        'onTap': () {},
      },
      {
        'imagePath': 'assets/images/star.png',
        'title': 'Offers',
        'onTap': () {},
      },
      {
        'imagePath': 'assets/images/deals.png',
        'title': 'deals',
        'onTap': () {},
      },
      {
        'imagePath': 'assets/images/notify.png',
        'title': 'Notifications',
        'onTap': () {},
      },
      {
        'imagePath': 'assets/images/delete_my_account.png',
        'title': 'Delete my Account',
        'onTap': () {},
      },
    ];

    return Column(
      children: [
        for (int i = 0; i < menuItems.length; i++) ...[
          ProfileMenuItem(
            imagePath: menuItems[i]['imagePath'],
            title: menuItems[i]['title'],
            onTap: menuItems[i]['onTap'],
          ),
          // Add divider after each item except the last one
          if (i < menuItems.length - 1)
            Divider(
              height: 1.h, // vertical spacing
              thickness: 0.5.r, // line thickness
              color: Color(0xFFE5E5E5),
              indent: 20.w, // horizontal start
              endIndent: 10.w, // horizontal end
            ),
        ],
      ],
    );
  }
}

/*import 'package:design/screens/profile/widgets/profile_menu_item.dart';
import 'package:flutter/material.dart';

class ProfileMenu extends StatelessWidget {
  const ProfileMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ProfileMenuItem(
          imagePath: 'assets/images/MyAddresses.png',
          title: 'My Addresses',
          onTap: () {},
        ),
        ProfileMenuItem(
          imagePath: 'assets/images/ChangePassword.png',
          title: 'Change Password',
          onTap: () {},
        ),
        ProfileMenuItem(
          imagePath: 'assets/images/star.png',
          title: 'Offers',
          onTap: () {},
        ),
        ProfileMenuItem(
          imagePath: 'assets/images/deals.png',
          title: 'deals',
          onTap: () {},
        ),
        ProfileMenuItem(
          imagePath: 'assets/images/notification.png',
          title: 'Notifications',
          onTap: () {},
        ),
        ProfileMenuItem(
          imagePath: 'assets/images/delete_my_account.png',
          title: 'Delete my Account',
          onTap: () {},
        ),
      ],
    );
  }
}
*/
