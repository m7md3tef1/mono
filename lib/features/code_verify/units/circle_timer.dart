import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/color_manager/color_manager.dart';

class CountTimer extends StatefulWidget {
  const CountTimer({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _CountTimerState createState() => _CountTimerState();
}

class _CountTimerState extends State<CountTimer> {
  var num=1.55;
  void _startCountDown(){
    Timer.periodic(
      Duration(seconds: 1),(time){
        setState(() {
num=(num-.01);
        });
    }
    );
  }
@override
  void initState() {
    _startCountDown();
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
  //  _startCountDown();
    return  Padding(
      padding:  EdgeInsets.only(top:10.h),
      child:
      num==0?const Text('Done'):
      Text(
          num.toStringAsFixed(2),style:const TextStyle(color: ColorManager.primaryColor),),
    );
  }
}
