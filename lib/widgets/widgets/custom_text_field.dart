import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../core/color_manager/color_manager.dart';
import 'custom_text.dart';


// ignore: must_be_immutable
class CustomTextField extends StatelessWidget {
  String? title;
  var onSaved;
  var validate;
  var prefixIcon;
  var perfIcon;
  var hintText;
  bool obscure;

  CustomTextField(
      {Key? key, this.title,
        this.hintText,
      this.onSaved,
      this.validate,
        this.perfIcon,
      this.obscure = false,
      this.prefixIcon}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomText(
            text: title,
            color: ColorManager.blackColor,
            fontSize: 15.sp,
            fontWeight: FontWeight.w600,
          ),

          TextFormField(
            obscureText: obscure,
            onSaved: onSaved,
            validator: validate,
            autofocus: false,

            textDirection: TextDirection.ltr,
            decoration: InputDecoration(
                labelStyle:const TextStyle(),
                prefixIcon: perfIcon,
                suffixIcon: prefixIcon,
                hintText: hintText,
                fillColor: Colors.orange,
              focusColor: Colors.orange,



            ) )
        ],
      ),
    );
  }
}
