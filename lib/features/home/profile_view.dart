import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mono/features/home/units/column_profile.dart';
import 'package:mono/features/home/units/container_profile.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
children:  [
  const ContProfile(),
  SizedBox(height: 20.h,),
  ColProfile(),
],
    );
  }
}
