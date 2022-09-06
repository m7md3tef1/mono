
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../core/color_manager/color_manager.dart';
import '../../core/color_manager/color_manager.dart';
import 'custom_text.dart';


class BookContainer extends StatelessWidget {
final int? color;
final int? numOfPages;
final String? writer;
final String? bookName;

  const BookContainer({Key? key,this.color,this.bookName,this.numOfPages,this.writer}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Expanded(
              child: Container(
              height: .05.sh,
              width: .45.sw,
              decoration: BoxDecoration
                (
                color: Colors.deepPurple,
                //color: Color(color!),
                borderRadius: BorderRadius.circular(15.r)
              ),
    ),
            ),
            Padding(
              padding: const EdgeInsets.all(3.0),
              child: CustomText(text: 'لعبة الثقه', fontSize: 20.sp),
            ),
            Padding(
              padding: const EdgeInsets.all(1.0),
              child: CustomText(text: 'الكاتب: نجيب محفوظ', fontSize: 15.sp
              ,color: Colors.grey,),

            ),
            Padding(
              padding: const EdgeInsets.all(3.0),
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.r),
                  color: ColorManager.primaryColor
                ),
                child: Padding(
                  padding: const EdgeInsets.all(3.0),
                  child: CustomText(text: '7 صفحات', fontSize: 15.sp
                    ,color: Colors.white,),
                ),
              ),

            )
            
          ],
        ),
      );
  }
}
