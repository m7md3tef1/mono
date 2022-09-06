part of '../view.dart';

class _CodeVerifyButton extends StatelessWidget {
  const _CodeVerifyButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.only(top:30.h,bottom: 30.h),
      child:  Container(
          width: 312.w,
          height: 46.h,
          decoration: BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.circular(26.sp),
              border: Border.all(color: ColorManager.primaryColor)),
          child: Center(
              child: CustomText(
                text: 'Send ',
                fontWeight: FontWeight.w400,
                color: ColorManager.whiteColor,
                fontSize: 14.sp,
              ))),
    );
  }
}