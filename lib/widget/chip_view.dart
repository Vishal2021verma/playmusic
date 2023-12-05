import 'package:flutter/material.dart';
import 'package:playmusic/utils/colors_resources.dart';

class ChipButton extends StatelessWidget {
  const ChipButton({super.key, required this.text, required this.action});
  final String text;
  final action;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(10),
      onTap: action,
      child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 14),
          decoration: BoxDecoration(
              color: ColorResource.miniPlayerBackgroundColor,
              borderRadius: BorderRadius.circular(10),
              border: Border.all(color: Colors.white12)),
          child: Center(
              child: Text(
            text,
            style: const TextStyle(
                color: ColorResource.textGreyColor, fontSize: 14, height: 1.4),
          ))),
    );
  }
}
