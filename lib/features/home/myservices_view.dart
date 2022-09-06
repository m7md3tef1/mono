import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mono/core/app_images/app_images.dart';
import 'package:mono/features/home/units/listview.dart';

import '../../core/color_manager/color_manager.dart';
import '../../widgets/widgets/custom_text.dart';
class MyServices extends StatelessWidget {
  const MyServices({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: SafeArea(
        child: Scaffold(
          appBar: AppBar(

            backgroundColor: Colors.white,
            title:  Center(
              child: CustomText(text:'my services',fontWeight: FontWeight.w500,fontSize:20.sp ),),
            leading: Container(
              height: 32.h,
              width: 32.w,
              decoration: const BoxDecoration(
                  color: Colors.white
              ),
              child:const Center(child:  Icon(Icons.arrow_back_ios,size: 16,)),
            ),
            actions: [
              Padding(
                padding: const EdgeInsets.only(right: 8.0),
                child: SvgPicture.asset(AppImages.Myservices,color: Colors.black,),
              )
            ],
            bottom: const TabBar(
              unselectedLabelColor: Colors.grey,
              indicatorColor: ColorManager.primaryColor,
              tabs: [
                Text('waiting',),
                Text('working ',),
                Text('Finished ',),
              ],

            ),
          ),
          body: TabBarView(children: [
            List_View(4,'Book',ColorManager.primaryColor),
            List_View(3,'Book',ColorManager.primaryColor),
            List_View(5,'finished ',Colors.green),
          ],

          )
        ),
      ),
    );
  }
}
