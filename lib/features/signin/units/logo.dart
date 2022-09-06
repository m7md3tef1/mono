part of '../view.dart';

class _SignInLogo extends StatelessWidget {
  const _SignInLogo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Center(
          child: Padding(
            padding: EdgeInsets.only(top: 50.h, bottom: 25.h),
            child: CustomText(
              text: 'Sign in',
              color: ColorManager.blackColor,
              fontSize: 20.sp,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
        Padding(
          padding:  EdgeInsets.only(bottom:28.h ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomText(
                text: 'welcome back ',
                fontWeight: FontWeight.w400,
                color: ColorManager.primaryColor,
                fontSize: 16.sp,
              )
            ],
          ),
        )
      ],
    );
  }
}
