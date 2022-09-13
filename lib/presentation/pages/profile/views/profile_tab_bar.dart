import 'package:flutter/material.dart';

import '../../../../app/config/app_colors.dart';
import 'profile_tab_bar_item.dart';

class ProfileTabBar extends StatelessWidget {
  const ProfileTabBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(40.0),
      child: Container(
        height: 56.0,
        padding: const EdgeInsets.all(5.0),
        color: AppColors.blackShark,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(40.0),
          child: Container(
            color: AppColors.blackShark,
            alignment: Alignment.center,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const [
                ProfileTabBarItem(label: "Posts", isSelected: false),
                SizedBox(width: 5.0),
                ProfileTabBarItem(label: "Photos", isSelected: true),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
