import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mono/core/router/router.dart';
import 'package:mono/features/code_verify/view.dart';
import 'package:mono/widgets/widgets/custom_button.dart';
import 'package:provider/provider.dart';
import '../../core/color_manager/color_manager.dart';
import '../../core/validator/validator.dart';
import '../../widgets/widgets/custom_scaffold.dart';
import '../../widgets/widgets/custom_text.dart';
import '../../widgets/widgets/custom_text_field.dart';
import 'controller.dart';
part 'units/logo.dart';
part 'units/field1.dart';
part 'units/button.dart';
part 'units/tapbar.dart';
part 'units/field2.dart';

class ForgetPassScreen extends StatefulWidget {
  const ForgetPassScreen({Key? key}) : super(key: key);

  @override
  State<ForgetPassScreen> createState() => _ForgetPassScreenState();
}

class _ForgetPassScreenState extends State<ForgetPassScreen> {
   var val;

  @override
  Widget build(BuildContext context) {

    return CustomScaffold(

      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),

        child: Consumer<value>(
            builder: (context, val, child)=>
           Padding(
            padding:  EdgeInsets.symmetric(horizontal: 25.w),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children:  [


                   const _ForgetPassLogo(),
                SizedBox(height: 64.h,),
                 TabBars(),
                SizedBox(height: 79.h,),
               Provider.of<value>(context,listen: false).val==2? const _ForgetPassField(): const _ForgetPassField2(),
                SizedBox(height: 116.h,),
                  const _ForgetPassButton()


              ],
            ),
          ),
        ),
      ),
    );
  }
}


