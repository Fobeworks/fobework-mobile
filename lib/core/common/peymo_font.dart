import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import 'app_style.dart';

TextStyle appFontStyle(double size, FontWeight fw, {Color? color}) =>
    GoogleFonts.inter(
        fontSize: size.sp, color: color ?? AppStyle.white, fontWeight: fw);
