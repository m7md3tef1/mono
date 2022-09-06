part of '../view.dart';

class _SkipButton extends StatelessWidget {
  var controller;

  _SkipButton({Key? key, this.controller}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        (Provider.of<IndexProv>(context,listen: false).pageIndex == 1)
            ? MagicRouter.navigateTo(const SignIn())
            : controller.jumpToPage(1);
      },
      child: Container(
          width: 312.w,
          height: 46.h,
          decoration: BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.circular(26.sp),
              border: Border.all(color: ColorManager.primaryColor)),
          child: Center(
              child: CustomText(
            text: 'continue ',
            color: ColorManager.whiteColor,
            fontSize: 14.sp,
          ))),
    );
  }
}
