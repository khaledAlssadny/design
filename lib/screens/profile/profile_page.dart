import 'package:design/screens/profile/widgets/profile_paeg_view.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: const Scaffold(
        body: ProfilePageView(),
      ),
    );
  }
}
