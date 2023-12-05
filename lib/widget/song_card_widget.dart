import 'package:flutter/material.dart';
import 'package:playmusic/utils/colors_resources.dart';
import 'package:playmusic/utils/image_constant.dart';
import 'package:playmusic/widget/custom_image_view.dart';

class SongCardWidget extends StatelessWidget {
  const SongCardWidget({super.key, this.sizeInPercentage = 0.28, this.action});
  final double sizeInPercentage;
  final action;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: MediaQuery.of(context).size.width * sizeInPercentage,
        child: GestureDetector(
          onTap: action ?? () {},
          child: Column(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(5),
                child: Stack(
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.palycardImage,
                      width:
                          MediaQuery.of(context).size.width * sizeInPercentage,
                      height:
                          MediaQuery.of(context).size.width * sizeInPercentage,
                    ),
                    Positioned(
                        top: 0,
                        left: 0,
                        right: 0,
                        bottom: 0,
                        child: Container(
                          color: Colors.black87.withOpacity(0.2),
                          child: const Center(
                            child: Icon(
                              Icons.play_arrow_rounded,
                              color: ColorResource.textGreyColor,
                              size: 36,
                            ),
                          ),
                        ))
                  ],
                ),
              ),
              const SizedBox(height: 8),
              const Text(
                'Agar Tum Sath Ho',
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  height: 1.5,
                  fontWeight: FontWeight.w500,
                  color: ColorResource.textGreyColor,
                  fontSize: 12,
                ),
              ),
            ],
          ),
        ));
  }
}
