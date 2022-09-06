part of '../view.dart';

class _PoweredBy extends StatelessWidget {
  const _PoweredBy({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: SizedBox(
      child: Align(
          alignment: Alignment.bottomCenter,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Image.asset(
                AppImages.mono,
                height: 77.h,
                width: 130.w,
              ),
              SizedBox(
                height: 27.h,
              )
            ],
          )),
    ));
  }
}
