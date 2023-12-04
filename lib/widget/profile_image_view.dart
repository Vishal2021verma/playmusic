import 'package:flutter/material.dart';
import 'package:playmusic/utils/image_constant.dart';
import 'package:playmusic/widget/custom_image_view.dart';

class ProfileImage extends StatelessWidget {
  const ProfileImage({super.key});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(1000),
      child: CustomImageView(
        imagePath: ImageConstant.profile,
        width: 24,
        height: 24,
      ),
    );
  }
}
