import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:peymo/core/core.dart';

final double peymoHeight = 844.h;
final double peymoWidth = 390.w;

const onboardingkey = 'hasSeenOnboard';

final enabledBorder = OutlineInputBorder(
  borderRadius: AppRadius.kminiMediumBorderRadius,
  borderSide: const BorderSide(color: AppStyle.grey),
);
final errorBorder = OutlineInputBorder(
  borderRadius: AppRadius.kminiMediumBorderRadius,
  borderSide: const BorderSide(color: AppStyle.grey),
);
final inputBorder = OutlineInputBorder(
  borderRadius: AppRadius.kminiMediumBorderRadius,
  borderSide: const BorderSide(color: AppStyle.grey),
);
final focusedErrorBorder = OutlineInputBorder(
  borderRadius: AppRadius.kminiMediumBorderRadius,
  borderSide: const BorderSide(color: AppStyle.grey),
);
