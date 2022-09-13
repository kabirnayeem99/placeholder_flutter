import 'package:flutter/material.dart';
import 'package:placeholder_flutter/app/config/app_colors.dart';

class ProfileTabBarItem extends StatelessWidget {
  final bool isSelected;
  final String label;

  const ProfileTabBarItem({
    Key? key,
    required this.isSelected,
    required this.label,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ClipRRect(
        borderRadius: BorderRadius.circular(40.0),
        child: Container(
          alignment: Alignment.center,
          color: isSelected ? AppColors.dodgerBlue : AppColors.blackShark,
          child: Text(
            label,
            style: const TextStyle(fontSize: 16.0),
          ),
        ),
      ),
    );
  }
}
