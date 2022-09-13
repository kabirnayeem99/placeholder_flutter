import 'package:flutter/material.dart';
import 'package:placeholder_flutter/app/config/app_colors.dart';

import 'views/floating_back_button.dart';
import 'views/floating_more_buttton.dart';
import 'views/profile_photos_tab_view.dart';
import 'views/profile_tab_bar.dart';
import 'views/rounded_profile_picture.dart';
import 'views/user_about_section.dart';
import 'views/user_profile_name.dart';
import 'views/user_profile_short_section.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.blackBalticSea,
      body: Container(
        margin: const EdgeInsets.symmetric(horizontal: 25.0),
        child: Column(
          children: [
            const SizedBox(height: 52.0),
            Row(
              children: const [
                FloatingBackButton(),
                Spacer(),
                FloatingMoreButton(),
              ],
            ),
            const SizedBox(height: 22.0),
            const RoundedProfilePicture(),
            const SizedBox(height: 22.0),
            const UserProfileName(),
            const SizedBox(height: 16.0),
            const UserAboutSection(),
            const SizedBox(height: 22.0),
            const UserProfileShortSection(),
            const SizedBox(height: 22.0),
            const ProfileTabBar(),
            const SizedBox(height: 12.0),
            const ProfilePhotosTabView(),
          ],
        ),
      ),
    );
  }
}
