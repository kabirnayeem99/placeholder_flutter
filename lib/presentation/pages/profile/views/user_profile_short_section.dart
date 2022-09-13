import 'package:flutter/material.dart';

import '../../../../app/config/app_colors.dart';
import 'short_text_info_column.dart';

class UserProfileShortSection extends StatelessWidget {
  const UserProfileShortSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(22.0),
      child: Container(
        height: 90.0,
        padding: const EdgeInsets.all(1.0),
        color: AppColors.grayMako,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(22.0),
          child: Container(
            color: AppColors.blackShark,
            alignment: Alignment.center,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const [
                ShortTextInfoColumn(count: "100", label: "Posts"),
                ShortTextInfoColumn(count: "1,5K", label: "Followers"),
                ShortTextInfoColumn(count: "500", label: "Following"),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
