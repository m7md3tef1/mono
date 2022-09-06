part of '../view.dart';

class _AppBar extends StatelessWidget {
  const _AppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 101.h,
      width: double.infinity,
      color: Colors.white70,
      child: Center(
        child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: CustomText(
              text: 'Interior design',
              fontSize: 20.sp,
              fontWeight: FontWeight.w500,
            )),
      ),
    );
  }
}
