import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/color_manager/color_manager.dart';
import '../../../widgets/widgets/custom_text.dart';

class List_View extends StatelessWidget {
   List_View(this.index,this.text,this.col ,{Key? key}) : super(key: key);
   String text;
   var col;
int index;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding:  EdgeInsets.only(top: 15.h,bottom: 15.h),
          child: Container(
            height: .6.sh,
            width: double.infinity,
            child: ListView.builder(
              itemCount:index ,
              itemBuilder: (context,index)=> ListTile
                (
                trailing: Column(
                  children: [
                    Expanded(
                      child: Text(
                        "256 " "EG  ",
                        style: TextStyle(
                          color: ColorManager.primaryColor,
                          fontSize: 15.sp,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    Expanded(
                      child: RatingBar.builder(
                        initialRating: 3,

                        minRating: 1,
                        direction: Axis.horizontal,
                        allowHalfRating: true,
                        itemCount: 4,
                        itemSize: 14,
// itemPadding:  EdgeInsets.symmetric(horizontal: 1.w),
                        itemBuilder: (context, _) => const Icon(
                          Icons.star,
                          color: Colors.amber,
                        ),
                        onRatingUpdate: (rating) {
                          print(rating);
                        },
                      ),
                    ),
                    Container(
                      height: 25.h,
                      width: 60.w,
                      decoration: BoxDecoration(
                        color: col,
                        borderRadius: BorderRadius.circular(8),
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
                  ],
                ),
                title: Column(
                  children: [
                    Text(
                      'Design of a children\'s',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    Text(
                      'room for 2 children',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
                subtitle:
                Text(
                  '      Interior design',
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 10.sp,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                leading: Image.asset(
                  "assets/images/spacejoy-XpbtQfr9Skg-unsplash (1).png",
                  width: 120.w,
                  height: 78.h,
                ),
// leading: SvgPicture.asset('assets/images/Ellipse 24.svg'),
              ),
            ),
          ),
        ),
        Container(
          height: 46.h,
          width: 312.w,
          decoration: BoxDecoration(
            color: ColorManager.primaryColor,
            borderRadius: BorderRadius.circular(26.r),

          ),
          child: Center(
            child: CustomText(text: 'add a new service + ',fontSize: 14.sp,fontWeight: FontWeight.w500,color: ColorManager.whiteColor,),
          ),
        )
      ],
    );
  }
}
