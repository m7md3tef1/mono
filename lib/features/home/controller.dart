import 'package:mono/features/home/myservices_view.dart';
import 'package:mono/features/home/profile_view.dart';
import 'package:mono/features/home/states.dart';
import 'home_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'myrequests_view.dart';

class HomeCubit extends Cubit<HomeStates> {
  HomeCubit() : super(HomeLayoutLoading());

  static HomeCubit get(context) => BlocProvider.of(context);

  int currentIndex = 0;

  List<Widget> bottomScreens = [
    const HomeView(),
   const MyServices(),
   const MyRequest(),
    const ProfileView()
  ];

  void changeBottom(int index) {
    currentIndex = index;
    debugPrint(index.toString());
    emit(ChangeBottomNavState());
  }
}
// const Profile(),
// const My requests(),
// const My services(),
