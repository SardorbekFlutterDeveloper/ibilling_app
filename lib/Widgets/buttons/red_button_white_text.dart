import 'package:flutter/material.dart';
import 'package:ibilling/core/constants/colors/color_const.dart';
import 'package:ibilling/core/constants/sizes/size_const.dart';
import 'package:ibilling/core/constants/texts/font_style_const.dart';

class RedButtonWhiteTextW extends StatelessWidget {
  final String text;
  final double width, height;
  final VoidCallback voidCallback;
  const RedButtonWhiteTextW({
    Key? key,
    required this.text,
    required this.width,
    required this.height,
    required this.voidCallback,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: ColorConst.instance.kRed,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(SizeConst.instance.rMaxSmall1),
          ),
        ),
        onPressed: voidCallback,
        child: Text(text, style: FontStyleConst.instance.headline1),
      ),
    );
  }
}
