import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../core.dart';

class PeymoConfig extends StatelessWidget {
  const PeymoConfig({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(390, 844),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return MaterialApp.router(
          debugShowCheckedModeBanner: false,
          title: PeymoString.peymo,
          routerConfig: AppRouter.routerConfig,
          // home: const OnboardingScreen(),
        );
      },
    );
  }
}
