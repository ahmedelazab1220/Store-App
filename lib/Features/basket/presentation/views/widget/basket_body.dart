import 'package:flutter/cupertino.dart';

import '../../../../../Core/shared_widget/custom_appbar.dart';

class BasketBody extends StatelessWidget {
  const BasketBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomAppbar(text: 'السله', image: "assets/images/teenyicons_cart-outline.png",)
      ],
    );
  }
}
