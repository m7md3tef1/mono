import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mono/widgets/widgets/custom_text.dart';

import '../home_model.dart';

class ColProfile extends StatelessWidget {
  ColProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: .28.sh,
          child: ListView.builder(
            physics:BouncingScrollPhysics() ,
            itemCount: proList.length,
            itemBuilder: (context, index) => Padding(
              padding:  EdgeInsets.symmetric(vertical: 18.h),
              child: Row(
                children: [
                  SizedBox(
                    width: 26.w,
                  ),
                  SvgPicture.asset(proList[index].img!),
                  SizedBox(
                    width: 14.w,
                  ),
                  CustomText(
                    fontSize: 16.sp,
                    text: proList[index].text1!,
                    fontWeight: FontWeight.w400,
                  )
                ],
              ),
            ),
          ),
        ),
         SizedBox(
           width: .9.sw,
           child: Divider(

             thickness: 1,
        ),
         ),
        Container(
          height: .29.sh,
          child: ListView.builder(
            physics:PageScrollPhysics() ,
            itemCount: proList2.length,
            itemBuilder: (context, index) => Padding(
              padding:  EdgeInsets.symmetric(vertical: 18.h),
              child: Row(
                children: [
                  SizedBox(
                    width: 26.w,
                  ),
                  SvgPicture.asset(proList2[index].img!),
                  SizedBox(
                    width: 14.w,
                  ),
                  CustomText(
                    fontSize: 16.sp,
                    text: proList2[index].text1!,
                    fontWeight: FontWeight.w400,
                  )
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }

  Row buildRow(var asset, var text) {
    return Row(
      children: [
        SizedBox(
          width: 26.w,
        ),
        SvgPicture.asset(asset),
        SizedBox(
          width: 14.w,
        ),
        CustomText(
          fontSize: 16.sp,
          text: text,
          fontWeight: FontWeight.w400,
        )
      ],
    );
  }
}
