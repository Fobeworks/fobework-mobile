part of '../splash_barrel.dart';

class _SplashView extends StatelessView<SplashScreen, SplashController> {
  const _SplashView(SplashController state, {Key? key})
      : super(state, key: key);

  @override
  Widget build(BuildContext context) {
    final Animation<double> fadeInAnimation = CurvedAnimation(
        parent: controller._animationController, curve: Curves.easeIn);
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage(PeymoAssets.splashone),
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Image.asset(PeymoAssets.peymoyellow),
            ),
            30.sbH,
            FadeTransition(
              opacity: fadeInAnimation,
              child: reusableText(
                PeymoString.splashText,
                style: appFontStyle(18, FontWeight.w400),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
