import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mono/features/signin/view.dart';
import 'package:provider/provider.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import '../../core/color_manager/color_manager.dart';
import '../../core/router/router.dart';
import '../../widgets/widgets/custom_button.dart';
import '../../widgets/widgets/custom_scaffold.dart';
import '../../widgets/widgets/custom_text.dart';
import 'controller.dart';
import 'intro_model.dart';
part 'units/pageview.dart';
part 'units/skip_button.dart';
part 'units/smoothindicator.dart';
class IntroView extends StatelessWidget {
   IntroView({Key? key}) : super(key: key);
  final controller = PageController(viewportFraction: 1.1, keepPage: true);

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      body:
    ScreenUtil().orientation==Orientation.landscape?
    SingleChildScrollView(
      physics: const BouncingScrollPhysics(),

      child:
       Column(
         children: [
           _CustomColumn(controller: controller),
           SizedBox(height:20.h)
         ],
       ),)
        :
    SizedBox(
      child:
      _CustomColumn(controller: controller),)


    );
  }
}

class _CustomColumn extends StatelessWidget {
  const _CustomColumn({
    Key? key,
    required this.controller,
  }) : super(key: key);

  final PageController controller;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(

         children: [
           SizedBox(height: 70.h,),
           PageViewWidget(controller: controller,),
           SizedBox(height: 70.h,),
           _SmoothIndicator(controller: controller,),
           SizedBox(height: 72.h,),
           _SkipButton(controller: controller,),
          // SizedBox(height: 20.h,)
       ],),
    );
  }
}
