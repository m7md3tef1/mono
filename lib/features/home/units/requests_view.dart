import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/app_images/app_images.dart';
import '../../../core/color_manager/color_manager.dart';
import '../../../widgets/widgets/custom_text.dart';

class RequestView extends StatelessWidget {
   RequestView(this.text,this.col, {Key? key}) : super(key: key) ;
String text;
var col;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 20.h,),
         const Image(
          image: AssetImage(AppImages.livingroom),
          fit: BoxFit.contain,
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 28.w, vertical: 18.h),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CustomText(
                text: 'Design of a children\'s room for 2 children',
                fontSize: 12.sp,
                fontWeight: FontWeight.w400,
              ),
              CustomText(
                text: "256" "EG  ",
                color: ColorManager.primaryColor,
                fontSize: 20.sp,
                fontWeight: FontWeight.w500,
              ),
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: 28.w),
          child: Column(
            children: [
              Row(
                children: [
                  CustomText(
                    text: 'Interior design',
                    fontSize: 10.sp,
                    fontWeight: FontWeight.w400,
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 8.0),
                child: ListTile(
                  trailing: Container(
                    height: 32.h,
                    width: 86.w,
                    decoration: BoxDecoration(
                      color: col,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Center(
                      child: CustomText(
                        text: text,
                        color: ColorManager.whiteColor,
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                  title: Text(
                    textDirection: TextDirection.ltr,
                    'Designer / Ibrahim',
                    style: TextStyle(  color: Colors.black,
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w400,),
                  ),
                  leading: Image.asset('assets/images/Ellipse 24.png'),
                  // leading: SvgPicture.asset('assets/images/Ellipse 24.svg'),
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}
