part of '../view.dart';

class _ForgetPassField2 extends StatelessWidget {
  const _ForgetPassField2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return   CustomTextField(title: 'Email ',
      prefixIcon: const Icon(Icons.mail),
      hintText: "Username@gmail.com",
      validate: Validator.validateEmail,
      onSaved: (v) {},);
  }
}