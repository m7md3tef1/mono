part of '../view.dart';

class _ForgetPassField extends StatelessWidget {
  const _ForgetPassField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return   CustomTextField(title: 'phone number ',
      prefixIcon: Icon(Icons.phone),
      hintText: "01087656512",
      validate: Validator.validatePhone,
      onSaved: (v) {},);
  }
}
