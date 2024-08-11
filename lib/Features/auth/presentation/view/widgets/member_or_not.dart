import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:storeapp/Core/utils/styles.dart';

class MemberOrNot extends StatelessWidget {
  const MemberOrNot({
    super.key,
    required this.text,
    required this.textButton,
    this.onPressed,
  });

  final String text;
  final String textButton;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return FadeInUp(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            text,
            style: Styles.textStyle11,
          ),
          TextButton(
            style: TextButton.styleFrom(
              padding: const EdgeInsets.all(0),
            ),
            onPressed: onPressed,
            child: FittedBox(
              fit: BoxFit.scaleDown,
              child: Text(
                textButton,
                style: Styles.textStyle12.copyWith(
                  decoration: TextDecoration.underline,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
