part of '../view.dart';

class _BottomBar extends StatelessWidget {
  const _BottomBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<HomeCubit, HomeStates>(
      listener: (_, s) {},
      builder: (context, state) => BottomNavigationBar(
          currentIndex: HomeCubit.get(context).currentIndex,


          onTap: (i) {
            HomeCubit.get(context).changeBottom(i);
          },
          showUnselectedLabels: true,
          selectedLabelStyle:  TextStyle(color:const Color(0xFFFFC90B),fontWeight: FontWeight.w400,fontSize:15.sp ),
          unselectedLabelStyle:  TextStyle(color: Colors.grey,fontSize:10.sp,fontWeight: FontWeight.w400 ),
          unselectedItemColor: Colors.grey,
          selectedItemColor:  const Color(0xFFFFC90B),
          items: [

            BottomNavigationBarItem(
              backgroundColor: Colors.black,
                icon: buildColumn(context, AppImages.Home, 0),
                label: 'Home'),
            BottomNavigationBarItem(
                backgroundColor: Colors.black,
                icon: buildColumn(context, AppImages.Myservices, 1),
                label: 'My services'),
            BottomNavigationBarItem(
                backgroundColor: Colors.black,
                icon: buildColumn(context, AppImages.Myrequests, 2),
                label: 'My requests'),
            BottomNavigationBarItem(
              backgroundColor: Colors.black,
              icon: buildColumn(context, AppImages.Profile, 3),
              label: 'Profile',
            ),
          ]),
    );
  }

  Column buildColumn(BuildContext context, image, index) {
    return Column(
      children: [
        SizedBox(
          height: 2.h,
        ),
        SvgPicture.asset(image,
          color: HomeCubit.get(context).currentIndex == index
              ? const Color(0xFFFFC90B)
              : const Color(0xff818181),
            width: HomeCubit.get(context).currentIndex == index? 30.sp:24.sp ,),
        HomeCubit.get(context).currentIndex == index
            ? SizedBox(
                height: 5.h,
              )
            : const SizedBox()
      ],
    );
  }
}
