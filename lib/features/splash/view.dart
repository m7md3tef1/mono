import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../core/app_images/app_images.dart';
import '../../core/color_manager/color_manager.dart';
import '../introduction/view.dart';

part '../splash/units/animated_splash.dart';
part '../splash/units/powered_by.dart';

class SplashView extends StatelessWidget {

  const SplashView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(

       backgroundColor: ColorManager.primaryColor,
        body:  SizedBox(
          height: double.infinity,
          width: double.infinity,
          child: Center(
            child: Column(

              children: const [
                 Expanded(child: SizedBox()),
                _AnimatedSplash(),
                _PoweredBy(),



              ],
            ),
          ),
        )
    );
  }


}

