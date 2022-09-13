import 'package:flutter/material.dart';

class UserProfileName extends StatelessWidget {
  const UserProfileName({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Text(
      "Shabib Tashfi",
      style: TextStyle(
        fontSize: 24.0,
      ),
    );
  }
}
