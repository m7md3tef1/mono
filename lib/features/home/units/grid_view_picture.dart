part of '../home_view.dart';

class _GridViewPicture extends StatelessWidget {
  const _GridViewPicture({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 10.h, left: 25.w, right: 25.w),
      child: StaggeredGrid.count(
        crossAxisCount: 4,
        mainAxisSpacing: 4,
        crossAxisSpacing: 4.0,
        children: [
          StaggeredGridTile.count(
            crossAxisCellCount: 2,
            mainAxisCellCount: 3,
            child: Padding(
              padding:  EdgeInsets.only(right: 5.w),
              child: ListView(
                children: [
                  Stack(
                    children: [
                      const Image(image: AssetImage('assets/images/Rectangle 177.png'),fit: BoxFit.contain,),
                      Align(
                        alignment: Alignment.topLeft,
                        child: Padding(
                          padding: EdgeInsets.only(top: 10.0.h, left: 10.5.w),
                          child: Container(
                            height: 24.h,
                            width: 24.w,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(4.r),
                              color: ColorManager.whiteColor,
                            ),
                            child: const Icon(
                              Icons.favorite_border,
                              color: Colors.grey,
                            ),
                          ),
                        ),
                      ),


                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CustomText(
                        color: Colors.black,
                        text: 'Kitchen room',
                        fontSize: 10.sp,
                        fontWeight: FontWeight.w400,
                      ),
                      const Icon(Icons.more_horiz)
                    ],
                  ),
                ],
              ),
            ),
          ),
          StaggeredGridTile.count(
            crossAxisCellCount: 2,
            mainAxisCellCount: 4,
            child: ListView(
              children: [
                Stack(
                  children: [
                    const Image(image: AssetImage("assets/images/Rectangle 189.png"),fit: BoxFit.contain,),
                    Align(
                      alignment: Alignment.topLeft,
                      child: Padding(
                        padding: EdgeInsets.only(top: 10.0.h, left: 10.5.w),
                        child: Container(
                          height: 24.h,
                          width: 24.w,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(4.r),
                            color: ColorManager.whiteColor,
                          ),
                          child: const Icon(
                            Icons.favorite_border,
                            color: Colors.grey,
                          ),
                        ),
                      ),
                    ),


                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(

                       'Interior design of a ...',
                      style: TextStyle(fontSize: 10.sp,
                        fontWeight: FontWeight.w400,color: Colors.black,),
                    ),
                    const Icon(Icons.more_horiz)
                  ],
                ),
              ],
            ),
          ),
          StaggeredGridTile.count(
            crossAxisCellCount: 2,
            mainAxisCellCount: 4,
            child: SizedBox(
              child: ListView(
                children: [
                  Stack(
                    children: [
                      const Image(image: AssetImage("assets/images/Rectangle 189.png"),fit: BoxFit.contain,),
                      Align(
                        alignment: Alignment.topLeft,
                        child: Padding(
                          padding: EdgeInsets.only(top: 10.0.h, left: 10.5.w),
                          child: Container(
                            height: 24.h,
                            width: 24.w,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(4.r),
                              color: ColorManager.whiteColor,
                            ),
                            child: const Icon(
                              Icons.favorite_border,
                              color: Colors.grey,
                            ),
                          ),
                        ),
                      ),


                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(

                        'Interior design of a ...',
                        style: TextStyle(fontSize: 10.sp,
                          fontWeight: FontWeight.w400,color: Colors.black,),
                      ),
                      const Icon(Icons.more_horiz)
                    ],
                  ),
                ],
              ),
            ),
          ),
          StaggeredGridTile.count(
            crossAxisCellCount: 2,
            mainAxisCellCount: 3,
            child: Padding(
              padding:  EdgeInsets.symmetric( horizontal: 5.w),
              child: ListView(
                children: [
                  Stack(
                    children: [
                      Image(image: AssetImage('assets/images/Rectangle 177.png'),fit: BoxFit.contain,),
                      Align(
                        alignment: Alignment.topLeft,
                        child: Padding(
                          padding: EdgeInsets.only(top: 10.0.h, left: 10.5.w),
                          child: Container(
                            height: 24.h,
                            width: 24.w,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(4.r),
                              color: ColorManager.whiteColor,
                            ),
                            child: const Icon(
                              Icons.favorite_border,
                              color: Colors.grey,
                            ),
                          ),
                        ),
                      ),


                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CustomText(
                        color: Colors.black,
                        text: 'Kitchen room',
                        fontSize: 10.sp,
                        fontWeight: FontWeight.w400,
                      ),
                      const Icon(Icons.more_horiz)
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
