import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mono/features/signin/states.dart';

import '../newaccount/states.dart';


class SignInCubit extends Cubit<SignInStates>{
  SignInCubit() : super(SignInLoading());

  static SignInCubit get(context) => BlocProvider.of(context);


  final formKey = GlobalKey<FormState>();
  bool isObscure=false;

      signIn()  {
        emit(SignInLoading());

        if(!formKey.currentState!.validate()) return null;
        formKey.currentState!.save();

        emit(SignInInit());


}

      obscure(){
        isObscure=!isObscure;
        emit(SignInObscure());
        return isObscure;



      }



}