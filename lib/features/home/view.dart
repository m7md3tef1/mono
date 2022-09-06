import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mono/features/home/states.dart';

import '../../core/app_images/app_images.dart';
import '../../core/color_manager/color_manager.dart';
import '../../widgets/widgets/custom_scaffold.dart';
import 'controller.dart';
import 'home_model.dart';
part 'units/nav_bar.dart';
class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      navBar: const _BottomBar(),
      body: BlocConsumer<HomeCubit, HomeStates>(
        listener: (_, s) {},
        builder: (context, s) {
          return HomeCubit.get(context)
              .bottomScreens[HomeCubit.get(context).currentIndex];
        },
      ),
    );
  }
}
