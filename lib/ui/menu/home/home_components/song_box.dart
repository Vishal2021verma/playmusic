import 'package:flutter/material.dart';
import 'package:playmusic/utils/colors_resources.dart';
import 'package:playmusic/widget/profile_image_view.dart';

class SongBoxWidget extends StatelessWidget {
  SongBoxWidget(
      {super.key,
      required this.headText,
      this.subHeadText,
      this.isProfile = false,
      this.action,
      this.actionText});
  final bool isProfile;
  final String? subHeadText;
  final String headText;
  final String? actionText;
  dynamic action;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 30),
      child: Column(
        children: [boxHead()],
      ),
    );
  }

  Widget boxHead() {
    return InkWell(
      onTap: action ?? () {},
      child: Container(
        margin: const EdgeInsets.only(bottom: 10),
        padding: const EdgeInsets.symmetric(horizontal: 18),
        child: Row(
          children: [
            isProfile
                ? const Padding(
                    padding: EdgeInsets.only(right: 10),
                    child: ProfileImage(
                      size: 32,
                    ),
                  )
                : const SizedBox.shrink(),
            Expanded(
                child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                subHeadText != null
                    ? Text(
                        subHeadText!.toUpperCase(),
                        textAlign: TextAlign.left,
                        overflow: TextOverflow.ellipsis,
                        maxLines: 1,
                        style: const TextStyle(
                            fontSize: 12,
                            color: ColorResource.subTextGreyColor),
                      )
                    : const SizedBox.shrink(),
                Row(
                  children: [
                    Expanded(
                      child: Text(
                        headText,
                        textAlign: TextAlign.left,
                        overflow: TextOverflow.ellipsis,
                        maxLines: 1,
                        style: const TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: ColorResource.textGreyColor),
                      ),
                    ),
                    const SizedBox(width: 16),
                    actionText != null
                        ? InkWell(
                            borderRadius: BorderRadius.circular(100),
                            onTap: action ?? () {},
                            child: Container(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 8, vertical: 4),
                              decoration: BoxDecoration(
                                  color: Colors.transparent,
                                  borderRadius: BorderRadius.circular(100),
                                  border: Border.all(
                                      color: ColorResource.textGreyColor,
                                      width: 1,
                                      style: BorderStyle.solid)),
                              child: Text(
                                actionText!,
                                style: const TextStyle(
                                    fontSize: 8,
                                    fontWeight: FontWeight.w300,
                                    color: ColorResource.textGreyColor),
                              ),
                            ),
                          )
                        : const SizedBox.shrink(),
                  ],
                )
              ],
            ))
          ],
        ),
      ),
    );
  }
}
