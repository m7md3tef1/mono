
import 'package:mono/features/Interior%20design/states.dart';
import 'package:mono/features/Interior%20design/view.dart';

import '../home/states.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'interior_view.dart';



class InteriorCubit extends Cubit<InteriorStates>
{
  InteriorCubit(): super (InteriorLayoutLoading());

  static InteriorCubit get(context)=> BlocProvider.of(context);



  int currentIndex = 4;

  List<Widget>
  bottomScreens = [
     Center(child: Row(
      children: const [
        Text('444'),
      ],
    ),),
    const Center(child: Text('333'),),
    const Center(child: Text('222'),),
    const Center(child: Text('111'),),
    const InteriorView(),
  ];


  void changeBottom(int index) {
    currentIndex = index;
    debugPrint(index.toString());
    emit(ChangeBottomNav());
  }

}
