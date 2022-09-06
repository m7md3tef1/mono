
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mono/features/Interior%20design/controller.dart';
import 'package:mono/features/Interior%20design/states.dart';

import '../../core/app_images/app_images.dart';
import '../../core/color_manager/color_manager.dart';
import '../../widgets/widgets/custom_scaffold.dart';
import '../../widgets/widgets/custom_text.dart';
import '../home/home_view.dart';
part 'units/nav_bar.dart';
part 'units/children\'s rooms.dart';
part 'units/app_bar.dart';
part 'units/Different.dart';
part 'units/offers.dart';
part 'units/custom_row.dart';
class CategoryInterior extends StatefulWidget {
  const CategoryInterior({Key? key}) : super(key: key);

  @override
  State<CategoryInterior> createState() => _CategoryInteriorState();
}

class _CategoryInteriorState extends State<CategoryInterior> {
 int index=1;
  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      navBar:const _BottomBar(),
      body: Column(
        children: [
          BlocConsumer<InteriorCubit,InteriorStates>
          (
            listener: (_,s)
            {

            },
            builder: (context,s)
            {
              return InteriorCubit.get(context).bottomScreens[InteriorCubit.get(context).currentIndex];
            },
          ),
        ],
      ),
    );
  }
}
