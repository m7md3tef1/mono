part of '../view.dart';

class _VerifyLogo extends StatelessWidget {
  const _VerifyLogo({
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
              padding:  EdgeInsets.symmetric(horizontal: .25.sw),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomText(
                    text: 'verification',
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