part of '../view.dart';

// ignore: must_be_immutable
class _SignInFields extends StatelessWidget {

  _SignInFields({Key? key}) : super(key: key);
  bool  obscure=false;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: NewAccountCubit.get(context).formKey,
        child: Column(
          children: [
            CustomTextField(title: 'phone number ',
              prefixIcon: const Icon(Icons.phone,color: ColorManager.darkGrey,),
              hintText: '01087656512',
              validate: Validator.validatePhone,
              onSaved: (v) {},),
            BlocConsumer<NewAccountCubit,SignUpStates>(
              listener: (BuildContext context, state) {  },
              builder: (BuildContext context, Object? state) {
                if(state is SignUpObscure){
                  obscure=NewAccountCubit.get(context).isObscure;
                }
              return  CustomTextField(title: 'password',
                  validate: Validator.validatePassword,
                  hintText: '*************',
                  obscure: obscure,
                  prefixIcon: InkWell(
                    onTap: (){
                      NewAccountCubit.get(context).obscure();
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