part of '../view.dart';

class _CodeField extends StatelessWidget {
  const _CodeField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    OtpFieldController otpController = OtpFieldController();

    return Column(
      children: [

        Row(
          children: [
            
            Expanded(
              child: OTPTextField(
                length: 4,
                controller: otpController,
                width: MediaQuery.of(context).size.width,
                fieldWidth: 50,
                style: const TextStyle(fontSize: 17),
                textFieldAlignment: MainAxisAlignment.spaceAround,
                fieldStyle: FieldStyle.box,
                onCompleted: (pin) {
                  print("Completed: " + pin);
                },
                onChanged: (pin) {
                  print("Changed: " + pin);
                },
              ),
            ),
          ],
        ),
      ],
    );
  }
}
