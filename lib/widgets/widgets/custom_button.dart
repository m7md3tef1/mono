import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../core/color_manager/color_manager.dart';
import 'custom_text.dart';
class CustomButton extends StatelessWidget {
  var function;
  String? text;
  var width;

  CustomButton({Key? key,required this.function,required this.text,this.width}) : super(key: key);
  @override
  Widget build(BuildContext context) {


    return InkWell(
      onTap: function,
      child: Container(
          width: width,
          height: 47.h,
          decoration: BoxDecoration(
            color: ColorManager.primaryColor,
              borderRadius: BorderRadius.circular(15.r),

          ),
          child: Center(child: CustomText(text: text,color:  Colors.white,fontSize: 15.sp,))),
    );
  }

}
