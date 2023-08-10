part of '../onboarding_barrel.dart';

class _OnboardingView
    extends StatelessView<OnboardingScreen, OnboardingController> {
  const _OnboardingView(OnboardingController state, {Key? key})
      : super(state, key: key);

  @override
  Widget build(BuildContext context) {
    Log.debug('hello');
    return Scaffold(
      body: BlocBuilder<OnBoardingBloc, OnBoardingState>(
        builder: (context, state) {
          return Stack(
            children: [
              PageView(
                controller: controller.pageController,
                onPageChanged: (index) {
                  state.page = index;
                  BlocProvider.of<OnBoardingBloc>(context)
                      .add(OnBoardingEvent());
                },
                children: [
                  onboardPage(
                    imageAsset: PeymoAssets.peymoblack,
                    backgroundImage: PeymoAssets.splashtwo,
                    label: PeymoString.onboardText,
                    color: AppStyle.black,
                  ),
                  onboardPage(
                    imageAsset: PeymoAssets.peymoyellow,
                    backgroundImage: PeymoAssets.splashthree,
                    label: PeymoString.onboardText,
                    color: AppStyle.white,
                  ),
                ],
              ),
              Positioned(
                left: 0,
                right: 0,
                bottom: peymoHeight * 0.18,
                child: PeymoButton(
                  onTap: () {},
                ).padding(
                  const EdgeInsets.symmetric(horizontal: 20),
                ),
              ),
              Positioned(
                left: 0,
                right: 0,
                bottom: peymoHeight * 0.08,
                child: state.page == 1
                    ? RichText(
                        textAlign: TextAlign.center,
                        text: TextSpan(
                            text: 'Login',
                            style: appFontStyle(16, FontWeight.w500),
                            recognizer: TapGestureRecognizer()
                              ..onTap = () => {}),
                      )
                    : const SizedBox.shrink(),
              ),
              state.page == 0
                  ? Positioned(
                      left: 10.w,
                      right: 10.w,
                      bottom: peymoHeight * 0.05,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SmoothPageIndicator(
                            controller: controller.pageController,
                            count: 3,
                            effect: WormEffect(
                              radius: 8,
                              dotHeight: 8.h,
                              dotWidth: 40.w,
                              spacing: 8,
                              dotColor: AppStyle.secondary,
                              activeDotColor: AppStyle.secondary,
                            ),
                          ),
                          RichText(
                            text: TextSpan(
                                text: 'Skip',
                                style: appFontStyle(16, FontWeight.w500,
                                    color: AppStyle.black),
                                recognizer: TapGestureRecognizer()
                                  ..onTap = () => {}),
                          )
                        ],
                      ).padding(const EdgeInsets.symmetric(horizontal: 10)),
                    )
                  : const SizedBox.shrink(),
            ],
          );
        },
      ),
    );
  }

  Widget onboardPage({
    required String imageAsset,
    required String backgroundImage,
    required String label,
    required Color color,
  }) {
    return Stack(
      // mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Positioned.fill(
            child: Image.asset(
          backgroundImage,
          fit: BoxFit.cover,
        )),
        Positioned(
          left: 0,
          right: 0,
          bottom: peymoWidth * 0.75,
          child: Image.asset(imageAsset),
        ),
        Positioned(
          left: 0,
          right: 0,
          bottom: peymoWidth * 0.65,
          child: reusableText(
            label,
            style: appFontStyle(24, color: color, FontWeight.w400),
          ),
        ),
      ],
    );
  }
}
