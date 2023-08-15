import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:peymo/core/config/app_logger.dart';
import 'package:peymo/core/core.dart';
import 'package:peymo/injection_container.dart';
import 'package:peymo/src/domain/common/storage/local_storage.dart';
import 'package:peymo/src/presentation/controllers/bloc/bloc_exports.dart';
import 'package:peymo/src/presentation/view/view_barrel.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../common/common_barrel.dart';

part 'view/onboarding_controller.dart';
part 'view/onboarding_view.dart';
