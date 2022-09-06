part of '../view.dart';

class _ForgetPassLogo extends StatelessWidget {
  const _ForgetPassLogo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 10.h,
        ),
        Row(

          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: const Icon(
                      Icons.arrow_back_ios,
                      color: Colors.black,
                    )),
              ],
            ),
            Padding(
              padding:  EdgeInsets.symmetric(horizontal: .20.sw),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomText(
                    text: 'forgot password',
                    fontSize: 20.sp,
                    color: ColorManager.blackColor,
                    fontWeight: FontWeight.w500,
                  )
                ],
              ),
            )
          ],
        ),
      ],
    );
  }
}