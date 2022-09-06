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
              text: 'Create New Account',
              color: ColorManager.blackColor,
              fontSize: 20.sp,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
        Padding(
          padding:  EdgeInsets.only(bottom:28.h ,left: 61.w),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomText(
                text: 'welcome  ',
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
