part of '../view.dart';

class _AnimatedSplash extends StatelessWidget {
  const _AnimatedSplash({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Center(
        child: SizedBox(
          width: 1.sw,
          height: 72.h,
          child: AnimatedSplashScreen(
            centered: true,
            duration: 2,
            splash: Image.asset(
              AppImages.logo,
              height: 100.h,
              width: 86.w,
              fit: BoxFit.contain,
            ),
           nextScreen: IntroView(),
            splashTransition: SplashTransition.fadeTransition,
            backgroundColor: ColorManager.primaryColor,
          ),
        ),
      ),
    );
  }
}
