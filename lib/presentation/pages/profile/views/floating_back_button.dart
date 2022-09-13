import 'package:flutter/material.dart';

import '../../../../app/config/app_colors.dart';

class FloatingBackButton extends StatelessWidget {
  const FloatingBackButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(40.0),
      child: Container(
        height: 45.0,
        width: 45.0,
        alignment: Alignment.center,
        padding:
            const EdgeInsets.only(top: 8.0, bottom: 8.0, left: 6.0, right: 8.0),
        color: AppColors.blackShark,
        child: const Icon(Icons.arrow_back),
      ),
    );
  }
}
