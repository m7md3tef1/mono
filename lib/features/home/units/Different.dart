part of '../home_view.dart';

class Different extends StatelessWidget {
  const Different({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          trailing: Column(
            children: [
              Expanded(
                child: Text(
                  "256 " "EG  ",
                  style: TextStyle(
                    color: ColorManager.primaryColor,
                    fontSize: 20.sp,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              Expanded(
                child: RatingBar.builder(
                  initialRating: 3,

                  minRating: 1,
                  direction: Axis.horizontal,
                  allowHalfRating: true,
                  itemCount: 4,
                  itemSize: 20,
                  // itemPadding:  EdgeInsets.symmetric(horizontal: 1.w),
                  itemBuilder: (context, _) => const Icon(
                    Icons.star,
                    color: Colors.amber,
                  ),
                  onRatingUpdate: (rating) {
                    print(rating);
                  },
                ),
              ),
              Expanded(
                child: Container(
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
              ),
            ],
          ),
          title: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Design of a children\'s',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 12.sp,
                  fontWeight: FontWeight.w400,
                ),
              ),
              SizedBox(
                height: 10.h,
              ),
              Text(
                'room for 2 children',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 12.sp,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ],
          ),
          subtitle: Text(
            '      Interior design',
            style: TextStyle(
              color: Colors.grey,
              fontSize: 10.sp,
              fontWeight: FontWeight.w400,
            ),
          ),
          leading: Image.asset(
            "assets/images/spacejoy-XpbtQfr9Skg-unsplash (1).png",
            width: 120.w,
            height: 78.h,
          ),
          // leading: SvgPicture.asset('assets/images/Ellipse 24.svg'),
        ),
        SizedBox(height: 24.h,),
        ListTile(
          trailing: Column(
            children: [
              Expanded(
                child: Text(
                  "256 " "EG  ",
                  style: TextStyle(
                    color: ColorManager.primaryColor,
                    fontSize: 20.sp,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              Expanded(
                child: RatingBar.builder(
                  initialRating: 3,

                  minRating: 1,
                  direction: Axis.horizontal,
                  allowHalfRating: true,
                  itemCount: 4,
                  itemSize: 20,
                  // itemPadding:  EdgeInsets.symmetric(horizontal: 1.w),
                  itemBuilder: (context, _) => const Icon(
                    Icons.star,
                    color: Colors.amber,
                  ),
                  onRatingUpdate: (rating) {
                    print(rating);
                  },
                ),
              ),
              Expanded(
                child: Container(
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
              ),
            ],
          ),
          title: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Design of a children\'s',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 12.sp,
                  fontWeight: FontWeight.w400,
                ),
              ),
              SizedBox(
                height: 10.h,
              ),
              Text(
                'room for 2 children',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 12.sp,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ],
          ),
          subtitle: Text(
            '      Interior design',
            style: TextStyle(
              color: Colors.grey,
              fontSize: 10.sp,
              fontWeight: FontWeight.w400,
            ),
          ),
          leading: Image.asset(
            "assets/images/collov-home-design-H-1j_s0dhCw-unsplash.png",
            width: 120.w,
            height: 78.h,
          ),
          // leading: SvgPicture.asset('assets/images/Ellipse 24.svg'),
        )
      ],
    );
  }
}
