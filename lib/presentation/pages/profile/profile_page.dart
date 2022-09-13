import 'package:flutter/material.dart';
import 'package:placeholder_flutter/app/config/app_colors.dart';

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

class ProfilePhotosTabView extends StatelessWidget {
  const ProfilePhotosTabView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GridView.builder(
        gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 300,
          childAspectRatio: 1,
          crossAxisSpacing: 12,
          mainAxisSpacing: 16,
        ),
        itemCount: 25,
        itemBuilder: (BuildContext context, int position) {
          return ClipRRect(
            borderRadius: BorderRadius.circular(20.0),
            child: Image.network(
              "https://3.bp.blogspot.com/-vaF0GF9mS6A/Tx6CGoESuMI/AAAAAAAABBg/qdekR7y8f6w/w1200-h630-p-k-no-nu/thumbnail+%25281%2529.jpg",
              fit: BoxFit.cover,
            ),
          );
        },
      ),
    );
  }
}

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

class FloatingMoreButton extends StatelessWidget {
  const FloatingMoreButton({
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
            const EdgeInsets.only(top: 8.0, bottom: 8.0, left: 8.0, right: 8.0),
        color: AppColors.blackShark,
        child: const Icon(Icons.more_horiz),
      ),
    );
  }
}
