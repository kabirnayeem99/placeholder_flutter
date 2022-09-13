import 'package:flutter/material.dart';
import 'package:placeholder_flutter/app/config/app_colors.dart';

class UserAboutSection extends StatelessWidget {
  const UserAboutSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      "Android developer with years of experience. Android with years "
      "of experience. Android with years of experience.",
      textAlign: TextAlign.center,
      style: TextStyle(
        fontSize: 16.0,
        color: AppColors.grayOslo,
      ),
    );
  }
}
