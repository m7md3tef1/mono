import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mono/core/app_images/app_images.dart';
import 'package:mono/core/color_manager/color_manager.dart';
import 'package:mono/core/router/router.dart';
import 'package:mono/features/home/states.dart';
import 'package:mono/widgets/widgets/custom_text_field.dart';
import '../../widgets/widgets/custom_text.dart';
import '../Interior design/view.dart';
import 'controller.dart';
import 'home_model.dart';

part 'units/app_bar.dart';
part 'units/custom_row.dart';
part 'units/category.dart';
part 'units/offers.dart';
part 'units/Different.dart';
part 'units/grid_view_picture.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(

      children: [
        const _AppBar(),
        Expanded(
          child: ListView(
            physics: const BouncingScrollPhysics(),
            children: [
              SizedBox(
                height: 10.h,
              ),
              const _CustomRow(
                name: 'Categories',
                index: 2,
              ),
              const Categories(),
              SizedBox(
                height: 10.h,
              ),
              const _CustomRow(
                name: 'Offers & packages',
                index: 1,
              ),
              SizedBox(
                height: 10.h,
              ),
              const Offers(),
              SizedBox(
                height: 10.h,
              ),
              const _CustomRow(
                name: 'Different services',
                index: 3,
              ),
              SizedBox(
                height: 10.h,
              ),
              const Different(),
              SizedBox(
                height: 43.h,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CustomText(
                      text: "Gallery",
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w400,
                    ),
                    Icon(Icons.filter_list),
                  ],
                ),
              ),
              SizedBox(
                height: 10.h,
              ),
              const _GridViewPicture()
              //  Gallery(),
            ],
          ),
        )
      ],
    );
  }
}
