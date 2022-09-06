part of '../view.dart';

class _BottomBar extends StatelessWidget {
  const _BottomBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<InteriorCubit, InteriorStates>(
      listener: (_, s) {},
      builder: (context, state) => BottomNavigationBar(
          currentIndex: InteriorCubit.get(context).currentIndex,
          onTap: (i) {
            InteriorCubit.get(context).changeBottom(i);
          },
          showUnselectedLabels: true,
          selectedLabelStyle: TextStyle(
              color: const Color(0xFFFFC90B),
              fontWeight: FontWeight.w400,
              fontSize: 10.sp),
          unselectedLabelStyle: TextStyle(
              color: Colors.grey, fontSize: 10.sp, fontWeight: FontWeight.w400),
          unselectedItemColor: Colors.grey,
          selectedItemColor: const Color(0xFFFFC90B),
          items: [
            BottomNavigationBarItem(
            backgroundColor: Colors.black,
            icon: buildColumn(context, AppImages.Profile, 0),
            label: 'حسابي',
          ),
            BottomNavigationBarItem(
              backgroundColor: Colors.black,
              icon: buildColumn(context, AppImages.Myrequests, 1),
              label: 'طلباتي',
            ),
            BottomNavigationBarItem(
                backgroundColor: Colors.black,
                icon: buildColumn(context, AppImages.Myservices, 2),
                label: 'خدماتي'),
            BottomNavigationBarItem(
                backgroundColor: Colors.black,
                icon: buildColumn(context, AppImages.image, 3),
                label: 'المعرض'),
            BottomNavigationBarItem(
                backgroundColor: Colors.black,
                icon: buildColumn(context, AppImages.Home, 4),
                label: 'الرئيسيه'),
          ]),
    );
  }

  Column buildColumn(BuildContext context, image, index) {
    return Column(
      children: [
        SizedBox(
          height: 2.h,
        ),
        SvgPicture.asset(
          image,
          color: InteriorCubit.get(context).currentIndex == index
              ? const Color(0xFFFFC90B)
              : const Color(0xff818181),
          width: 24.sp,
        ),
        InteriorCubit.get(context).currentIndex == index
            ? SizedBox(
                height: 5.h,
              )
            : const SizedBox()
      ],
    );
  }
}
