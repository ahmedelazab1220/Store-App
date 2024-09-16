import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:storeapp/Core/widgets/custom_button.dart';
import 'package:storeapp/Features/otps/presentation/view/widgets/otp_body_item_code.dart';
import 'package:storeapp/Features/otps/presentation/view_model/otp_bloc/otp_bloc.dart';

class OtpBodyCode extends StatefulWidget {
  const OtpBodyCode({super.key});

  @override
  State<OtpBodyCode> createState() => _OtpBodyCodeState();
}

class _OtpBodyCodeState extends State<OtpBodyCode> {
  final List<TextEditingController> _controllers =
      List.generate(6, (_) => TextEditingController());
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  void dispose() {
    for (var controller in _controllers) {
      controller.dispose();
    }
    super.dispose();
  }

  String get _otpCode {
    return _controllers.map((controller) => controller.text).join();
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<OtpBloc, OtpState>(
      listener: (context, state) {},
      builder: (context, state) {
        return Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Form(
              key: _formKey,
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  OtpBodyItemCode(),
                  OtpBodyItemCode(),
                  OtpBodyItemCode(),
                  OtpBodyItemCode(),
                  OtpBodyItemCode(),
                  OtpBodyItemCode(),
                ],
              ),
            ),
            //const Spacer(),
            Padding(
              padding: const EdgeInsets.only(bottom: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Expanded(
                    child: CustomButton(
                      textButton: 'تأكيد',
                      onPressed: () {
                        if (_formKey.currentState!.validate()) {
                          // ignore: unused_local_variable
                          String otpCode = _otpCode;
                          BlocProvider.of<OtpBloc>(context).add(
                            const VerifyOtpEvent(),
                          );
                        }
                      },
                    ),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Expanded(
                    child: CustomButton(
                      textButton: 'إعادة إرسال',
                      onPressed: () {},
                      color: const Color.fromARGB(255, 211, 215, 223),
                    ),
                  ),
                ],
              ),
            ),
          ],
        );
      },
    );
  }
}
