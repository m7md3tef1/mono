import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mono/features/newaccount/states.dart';
import 'package:mono/features/signin/states.dart';
import 'package:mono/features/signin/view.dart';
import '../../core/app_images/app_images.dart';
import '../../core/color_manager/color_manager.dart';
import '../../core/router/router.dart';
import '../../core/validator/validator.dart';
import '../../widgets/widgets/custom_scaffold.dart';
import '../../widgets/widgets/custom_text.dart';
import '../../widgets/widgets/custom_text_field.dart';
import 'controller.dart';

part 'units/contact.dart';
part 'units/skip.dart';
part 'units/fields.dart';
part 'units/logo.dart';
part 'units/button.dart';

class NewAccount extends StatelessWidget {
  const NewAccount({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 25.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 10.h,
              ),
              const _SignInLogo(),
              _SignInFields(),
              const _SignInButton(),
              const _SignInContact(),
              const _SignSkip()
            ],
          ),
        ),
      ),
    );
  }
}
