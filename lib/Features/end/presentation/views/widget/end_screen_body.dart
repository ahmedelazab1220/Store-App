import 'package:animate_do/animate_do.dart';
import 'package:confetti/confetti.dart';
import 'package:flutter/material.dart';
import 'package:storeapp/Core/shared_widget/custom_button.dart';
import 'package:storeapp/Core/utils/styles.dart';

class EndScreenBody extends StatefulWidget {
  const EndScreenBody({super.key});

  @override
  State<EndScreenBody> createState() => _EndScreenBodyState();
}
class _EndScreenBodyState extends State<EndScreenBody> {
  late ConfettiController _confettiController;

  @override
  void initState() {
    super.initState();
    _confettiController = ConfettiController(duration: const Duration(seconds: 2));
    _confettiController.play(); // Start the confetti animation
  }

  @override
  void dispose() {
    _confettiController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 80),
      child: Stack(
        alignment: Alignment.center,
        children: [
          SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Image(image: AssetImage("assets/images/done_image.png"),
              width: 80,
              height: 80,
            ),
            const SizedBox(height: 13,),
            Text("تم تأكيد الطلب بنجاح",
              style: Styles.textStyle52,
            ),
            const SizedBox(height: 40,),
            CustomButton(text: "العودة الي الرئيسية", onTap: (){})
          ],
        ),
      ),
          Positioned(
            top: 100,
            child: ZoomIn(
              child: const Image(image: AssetImage("assets/images/celebrate1.png"),
                  width: 200,
                  height: 200
                ,
              ),
            ),
          ),
          Positioned(
            left: 31,
            top: 270,
            child: ZoomIn(
              child: const Image(image: AssetImage("assets/images/celebrate2.png"),
              width: 50,
                height: 50,
              ),
            ),
          ),
          Positioned(
            right: 31,
            top: 270,
            child: ZoomIn(
              child: const Image(image: AssetImage("assets/images/celebrate3.png"),
              width: 50,
                height: 50,
              ),
            ),
          ),
          Positioned(
            top: 15,
            left: 0,
            child: ConfettiWidget(
              emissionFrequency: 0.3,
              confettiController: _confettiController,
              blastDirectionality: BlastDirectionality.explosive,
              shouldLoop: false,
              colors: const [Colors.red, Colors.blue, Colors.green, Colors.yellow],
            ),
          ),
        ],
      ),
    );
  }
}