part of '../view.dart';

class _CodeLogo extends StatelessWidget {
  const _CodeLogo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Center(
            child: Padding(
          padding: EdgeInsets.symmetric(vertical: 92.h, horizontal: 50.w),
          child: CustomText(
            align: TextAlign.center,
              text: 'Lorem Ipsum is simply dummy text of the printing',
              color: Colors.black54,
              fontSize: 16.sp),
        )),
      ],
    );
  }
}
