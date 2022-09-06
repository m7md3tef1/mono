import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mono/core/app_images/app_images.dart';
import 'package:mono/features/home/units/listview.dart';
import 'package:mono/features/home/units/requests_view.dart';

import '../../core/color_manager/color_manager.dart';
class MyRequest extends StatelessWidget {
  const MyRequest({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: SafeArea(
        child: Scaffold(
            appBar: AppBar(

              backgroundColor: Colors.white,
              title:  TextFormField(
                decoration: const InputDecoration(
                  suffixIcon: Icon(Icons.search),
                  hintText: 'search',
                  prefixIcon: Icon(Icons.filter_list)
                ),
              ),
              leading: CircleAvatar(
                backgroundColor: Colors.transparent,
                radius: 10,
                child:SvgPicture.asset(AppImages.bell) ,),
              actions: [
                Padding(
                  padding: const EdgeInsets.only(right: 8.0),
                  child: SvgPicture.asset(AppImages.massage,color: ColorManager.primaryColor,),
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
              RequestView('Book',const Color.fromRGBO(58,  130, 248, 0.6)),
              RequestView('Ongoing ',ColorManager.primaryColor),
              RequestView('cancelled  ',const Color(0xFFDE3838)),
            ],

            )
        ),
      ),
    );
  }
}
