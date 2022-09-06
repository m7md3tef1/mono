part of '../view.dart';

class _ForgetPass extends StatelessWidget {
  const _ForgetPass({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 10.h, bottom: 30.h),
      child: Align(
        alignment: Alignment.centerRight,
        child: SizedBox(
          child: InkWell(
              onTap: () {
                MagicRouter.navigateTo(const ForgetPassScreen());
              },
              child: CustomText(

                fontSize: 12.sp,
                text: '?Forgot password',
                color: ColorManager.darkGrey,
              )),
        ),
      ),
    );
  }
}
