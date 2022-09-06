part of '../view.dart';
class _SignInButton extends StatelessWidget {
  const _SignInButton({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding:  EdgeInsets.only(top: 96.h),
      child: Container(
          width: 312.w,
          height: 46.h,
          decoration: BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.circular(26.sp),
              border: Border.all(color: ColorManager.primaryColor)),
          child: Center(
              child: CustomText(
                text: 'sign up ',
                color: ColorManager.whiteColor,
                fontSize: 14.sp,
              ))),
    );
  }
}