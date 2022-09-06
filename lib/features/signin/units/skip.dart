part of '../view.dart';

class _SignSkip extends StatelessWidget {
  const _SignSkip({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 40.h, bottom: 40.h),
      child: Align(
        alignment: Alignment.centerRight,
        child: SizedBox(
          child: InkWell(
              onTap: () {
            //    MagicRouter.navigateAndPopAll(const Home());
              },
              child: Container(
                  width: 312.w,
                  height: 46.h,
                  decoration: BoxDecoration(
                      color: Colors.white,

                      borderRadius: BorderRadius.circular(26.sp),
                      border: Border.all(color: ColorManager.primaryColor,width: 2.sp)),
                  child: Center(
                      child: CustomText(
                        text: 'Enter as a guest  ',
                        color: Color(0xFF3A82F8),
                        fontSize: 14.sp,
                      )))),
        ),
      ),
    );
  }
}
