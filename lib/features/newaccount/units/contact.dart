part of '../view.dart';

class _SignInContact extends StatelessWidget {
  const _SignInContact({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 1.sw,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding:  EdgeInsets.symmetric(vertical: 34.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomText(
                    text: 'Or by social media ',
                    color: ColorManager.blackColor,
                    fontWeight: FontWeight.w400,
                    fontSize: 12.sp),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset(
                AppImages.facebook,
                width: 39.w,
                height: 32.h,
              ),
              SizedBox(
                width: 16.w,
              ),
              SvgPicture.asset(
                AppImages.google,
                width: 39.w,
                height: 32.h,
              ),
            ],
          ),
          Padding(
            padding:  EdgeInsets.symmetric(vertical: 20.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomText(
                    text: 'I have no account ',
                    color: ColorManager.blackColor,
                    fontWeight: FontWeight.w400,
                    fontSize: 12.sp),
                InkWell(
                  onTap: (){
                    MagicRouter.navigateAndPopAll(const SignIn());
                  },
                  child: CustomText(
                      text: 'Sign in  ',
                      color: ColorManager.primaryColor,
                      fontWeight: FontWeight.w400,
                      fontSize: 12.sp),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
