part of '../view.dart';

class Offers extends StatelessWidget {
  const Offers({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
         const Image(
          image: AssetImage(AppImages.livingroom),
          fit: BoxFit.contain,
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 28.w, vertical: 18.h),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CustomText(
                text: 'Design of a children\'s room for 2 children',
                fontSize: 12.sp,
                fontWeight: FontWeight.w400,
              ),
              CustomText(
                text: "256" "EG  ",
                color: ColorManager.primaryColor,
                fontSize: 20.sp,
                fontWeight: FontWeight.w500,
              ),
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: 28.w),
          child: Column(
            children: [
              Row(
                children: [
                  CustomText(
                    text: 'Interior design',
                    fontSize: 10.sp,
                    fontWeight: FontWeight.w400,
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              ListTile(
                trailing: Container(
                  height: 32.h,
                  width: 60.w,
                  decoration: BoxDecoration(
                    color: ColorManager.primaryColor,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Center(
                    child: CustomText(
                      text: 'Book',
                      color: ColorManager.whiteColor,
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
                title: Text(
                   'Designer / Ibrahim',
                style: TextStyle(  color: Colors.black,
                  fontSize: 12.sp,
                  fontWeight: FontWeight.w400,),
                ),
                leading: Image.asset('assets/images/Ellipse 24.png'),
                // leading: SvgPicture.asset('assets/images/Ellipse 24.svg'),
              )
            ],
          ),
        )
      ],
    );
  }
}
