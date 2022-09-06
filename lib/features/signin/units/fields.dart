part of '../view.dart';

// ignore: must_be_immutable
class _SignInFields extends StatelessWidget {

  _SignInFields({Key? key}) : super(key: key);
  bool  obscure=false;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: SignInCubit.get(context).formKey,
        child: Column(
          children: [
            CustomTextField(title: 'phone number ',
              prefixIcon: const Icon(Icons.phone,color: ColorManager.darkGrey,),
              hintText: '01087656512',
              validate: Validator.validatePhone,
              onSaved: (v) {},),
            BlocConsumer<SignInCubit,SignInStates>(
              listener: (BuildContext context, state) {  },
              builder: (BuildContext context, Object? state) {
                if(state is SignInObscure){
                  obscure=SignInCubit.get(context).isObscure;
                }
              return  CustomTextField(title: 'password',
                  validate: Validator.validatePassword,
                  hintText: '*************',
                  obscure: obscure,
                  prefixIcon: InkWell(
                    onTap: (){
                      SignInCubit.get(context).obscure();
                    },
                      child: Icon(
                        color: ColorManager.darkGrey,
                        obscure?Icons.visibility:
                            Icons.visibility_off
                      )),
                  onSaved: (v) {},);

              },

            ),
            SizedBox(height: 15.h,),

          ],
        )) ;
  }
}