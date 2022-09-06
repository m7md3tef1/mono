part of '../view.dart';

class _ResendCode extends StatelessWidget {
  const _ResendCode({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.symmetric(vertical: 9.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding:  EdgeInsets.only(top: 29.h,bottom: 20.h),
            child: CustomText(
              text: 'Resend',
              color: ColorManager.blackColor,
              fontSize: 14.sp,
              fontWeight: FontWeight.w700,
            ),
          ),
          const CountTimer(),
        ],
      ),
    );
  }
}
