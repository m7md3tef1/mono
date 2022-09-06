import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mono/core/app_images/app_images.dart';

class ContProfile extends StatelessWidget {
  const ContProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 165.h,
      child: Stack(
        alignment: AlignmentDirectional.bottomCenter,
        children: [
          Align(alignment: Alignment.topCenter,
            child: Container(
              height: 114.h,
              width: double.infinity,
              decoration: const BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(10),
                      bottomRight: Radius.circular(10))),
            ),
          ),
          const CircleAvatar(
            radius: 50,
            backgroundImage:  AssetImage(AppImages.profile),
          ),
        ],
      ),
    );
  }
}
