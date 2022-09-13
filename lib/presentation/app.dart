import 'package:flutter/material.dart';
import 'package:placeholder_flutter/app/config/app_color_scheme.dart';
import 'package:placeholder_flutter/presentation/pages/profile/profile_page.dart';

class PlaceholderApp extends StatelessWidget {
  const PlaceholderApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(colorScheme: AppColorScheme.darkColorScheme),
      home: const ProfilePage(),
    );
  }
}
