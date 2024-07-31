import 'package:flutter/material.dart';

import '../../../../../Core/utils/colors.dart';

class CustomBanner extends StatelessWidget {
  const CustomBanner({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
        children: [
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 23),
            padding: const EdgeInsets.symmetric(horizontal: 84, vertical: 25),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: const Color(0xffF3F5FC)
            ),
            child: const Image(image: AssetImage("assets/images/pipsi_product_details.png"),
              height: 100,
              width: 162,
            ),
          ),
          const Positioned(
            left: 40,
            top: 10,
            child: CircleAvatar(
              radius: 24,
              backgroundColor: AppColors.white,
              child: Center(child: Image(image: AssetImage("assets/images/pepsi_detaisl.png"),)),


            ),
          )
        ]
    );
  }
}
