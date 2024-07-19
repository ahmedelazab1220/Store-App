import 'package:flutter/material.dart';
import 'package:storeapp/Core/utils/styles.dart';
import 'package:storeapp/Core/utils/text.dart';

class SlidingText extends StatelessWidget {
  const SlidingText({
    super.key,
    required this.slidingAnimation,
  });

  final Animation<Offset> slidingAnimation;

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: slidingAnimation,
      builder: (context, widget) {
        return SlideTransition(
          position: slidingAnimation,
          child: Text(
            AppText.kAppName,
            style: Styles.textStyle25,
          ),
        );
      },
    );
  }
}
