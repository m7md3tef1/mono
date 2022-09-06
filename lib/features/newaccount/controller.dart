import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mono/features/newaccount/states.dart';


class NewAccountCubit extends Cubit<SignUpStates>{
  NewAccountCubit() : super(SignUPLoading());

  static NewAccountCubit get(context) => BlocProvider.of(context);


  final formKey = GlobalKey<FormState>();
  bool isObscure=false;

      signIn()  {
        emit(SignUPLoading());

        if(!formKey.currentState!.validate()) return null;
        formKey.currentState!.save();

        emit(SignUpInit());


}

      obscure(){
        isObscure=!isObscure;
        emit(SignUpObscure());
        return isObscure;



      }



}