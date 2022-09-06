import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../core/color_manager/color_manager.dart';

// ignore: must_be_immutable
class CustomText extends StatelessWidget {
  String? text;
  Color? color;
  var fontSize;
  var fontWeight;
  var align;
  var height;
  var textDirection;

  CustomText(
      {Key? key,
        this.textDirection,
        this.height,
        this.align,
        required this.text,
        this.color = ColorManager.blackColor,
        required this.fontSize,
        this.fontWeight = FontWeight.bold})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text!,
      textDirection: TextDirection.rtl,
      style: GoogleFonts.roboto(
        height: height,
        fontSize: fontSize,
        fontWeight: fontWeight,
        color: color,
      ),
      maxLines: 4,
      textAlign: align,
    );
  }
}
