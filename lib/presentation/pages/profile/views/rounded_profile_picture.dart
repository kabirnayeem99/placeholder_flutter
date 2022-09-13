import 'package:flutter/material.dart';

import '../../../../app/config/app_colors.dart';

class RoundedProfilePicture extends StatelessWidget {
  const RoundedProfilePicture({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(110.0),
      child: Container(
        height: 110.0,
        width: 110.0,
        padding: const EdgeInsets.all(2.0),
        color: AppColors.dodgerBlue,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(110.0),
          child: Image.network(
            "https://i1.rgstatic.net/ii/profile.image/819714641108994-1572446608181_Q512/Md-Mamunur-Rashid-14.jpg",
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
