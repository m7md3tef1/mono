part of '../view.dart';

// ignore: must_be_immutable
class _SmoothIndicator extends StatelessWidget {
  var controller;
  _SmoothIndicator({Key? key, this.controller}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SmoothPageIndicator(
      controller: controller,
      count: introList.length,
      effect: ExpandingDotsEffect(
          dotHeight: 10.h,
          dotWidth: 10.w,
          activeDotColor: ColorManager.secondaryColor,
          dotColor: ColorManager.greyColor,

           strokeWidth: 20.w,
          ),
    );
  }
}
