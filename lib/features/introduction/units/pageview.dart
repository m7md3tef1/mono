part of '../view.dart';

class PageViewWidget extends StatelessWidget {
  var controller;
  static int indexpage = 0;

  PageViewWidget({Key? key, this.controller}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 1.h),
      child: Center(
        child: SizedBox(
          width: 1.sw,
          height: 410.h,
          child: PageView.builder(
              physics: const BouncingScrollPhysics(),
              onPageChanged: (index) {
                Provider.of<IndexProv>(context, listen: false).getIndex(index);
              },
              controller: controller,
              itemCount: introList.length,
              itemBuilder: (_, index) {
                indexpage = index;

                return Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset(
                      introList[index].img!,
                      height: 225.h,
                      width: 212.w,
                      fit: BoxFit.contain,
                    ),
                    SizedBox(
                      height: 3.h,
                    ),

                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 27.w),
                      child: SizedBox(
                          // height:78.h ,
                          width: 1.sw,
                          child: Center(
                              child: CustomText(
                            text: introList[index].text1!,
                            color: ColorManager.blackColor,
                            fontSize: 24.sp,
                            fontWeight: FontWeight.w400,
                          ))),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 20.w,horizontal:25.w ),
                      child: Center(
                          child: CustomText(
                            text: introList[index].text2!,
                            align: TextAlign.center,
                            color: Colors.black54,
                            fontSize: 24.sp,
                            fontWeight: FontWeight.w400,
                          )),
                    )
                  ],
                );
              }),
        ),
      ),
    );
  }
}
