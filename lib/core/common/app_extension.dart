import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

extension OnTextExtension on Widget {
  Widget reusableText(String text, {required TextStyle style}) {
    return Text(text, textAlign: TextAlign.center, style: style);
  }
}

extension OnPaddingRow on Row {
  Widget padding(EdgeInsets edgeInsets) {
    return Padding(padding: edgeInsets.w, child: this);
  }
}

extension OnPaddingColumn on Column {
  Widget padding(EdgeInsets edgeInsets) {
    return Padding(padding: edgeInsets.h, child: this);
  }
}

extension OnPaddingWidget on Widget {
  Widget padding(EdgeInsets edgeInsets) {
    return Padding(padding: edgeInsets.w, child: this);
  }
}

extension OnWidthSpacer on num {
  Widget get sbW => SizedBox(width: w);
}

extension OnHeightSpacer on num {
  Widget get sbH => SizedBox(height: h);
}

// ? if it is a double

extension WidgetDExtensions on double {
  Widget get sbH => SizedBox(
        height: h,
      );
  Widget get sbW => SizedBox(
        height: w,
      );
  EdgeInsetsGeometry get padA => EdgeInsets.all(this);
  EdgeInsetsGeometry get padV => EdgeInsets.symmetric(vertical: h);
  EdgeInsetsGeometry get padH => EdgeInsets.symmetric(vertical: w);
}
