part of '../view.dart';

class _ForgetPassButton extends StatelessWidget {
  const _ForgetPassButton({Key? key}) : super(key: key);

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
              child: CustomButton(
                text: 'Send ', function: (){MagicRouter.navigateTo(const CodeScreen());},

              ))),
    );
  }
}