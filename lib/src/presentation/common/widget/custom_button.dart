import 'package:flutter/material.dart';
import 'package:peymo/core/core.dart';

class PeymoButton extends StatelessWidget {
  final double width;
  final double height;
  final Color color;
  final String text;
  final Function()? onTap;
  const PeymoButton({
    super.key,
    this.width = double.maxFinite,
    this.height = 50,
    this.color = AppStyle.secondary,
    this.text = 'Continue',
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: color,
        borderRadius: AppRadius.largeBorderRadius,
      ),
      child: reusableText(
        text,
        style: appFontStyle(18, FontWeight.w400),
      ),
    );
  }
}
