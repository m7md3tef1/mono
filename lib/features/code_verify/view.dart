import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mono/features/code_verify/units/circle_timer.dart';
import 'package:otp_text_field/otp_field.dart';
import 'package:otp_text_field/style.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import '../../core/color_manager/color_manager.dart';
import '../../widgets/widgets/button_back.dart';
import '../../widgets/widgets/custom_scaffold.dart';
import '../../widgets/widgets/custom_text.dart';



part 'units/button.dart';
part 'units/fields.dart';
part 'units/body.dart';
part 'units/resend_code.dart';
part 'units/logo.dart';
class CodeScreen extends StatelessWidget {
  const CodeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(

      body: CustomScaffold(
        body: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Padding(
            padding:  EdgeInsets.symmetric(horizontal: 25.w),
            child: Column(
              children:const [
                _VerifyLogo(),
                _CodeLogo(),
                _CodeField(),
                _ResendCode(),
                _CodeVerifyButton(),

              ],
            ),
          ),
        ),
      ),
    );
  }
}
