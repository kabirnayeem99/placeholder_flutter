import 'package:flutter/material.dart';

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
