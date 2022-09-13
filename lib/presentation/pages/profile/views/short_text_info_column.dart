import 'package:flutter/material.dart';

import '../../../../app/config/app_colors.dart';

class ShortTextInfoColumn extends StatelessWidget {
  final String count;
  final String label;

  const ShortTextInfoColumn({
    Key? key,
    required this.count,
    required this.label,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "$count",
          style: const TextStyle(
            fontSize: 20.0,
            color: Colors.white,
          ),
        ),
        const SizedBox(height: 8.0),
        Text(
          label,
          style: TextStyle(
            color: AppColors.grayOslo,
            fontSize: 16.0,
          ),
        ),
      ],
    );
  }
}
