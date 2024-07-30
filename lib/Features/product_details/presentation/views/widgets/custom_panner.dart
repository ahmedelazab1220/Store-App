import 'package:flutter/material.dart';

import '../../../../../Core/utils/colors.dart';

class CustomBanner extends StatelessWidget {
  const CustomBanner({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
        children: [
          Container(
            margin: EdgeInsets.symmetric(horizontal: 23),
            padding: EdgeInsets.symmetric(horizontal: 84, vertical: 25),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Color(0xffF3F5FC)
            ),
            child: Image(image: AssetImage("assets/images/pipsi_product_details.png"),
              height: 100,
              width: 162,
            ),
          ),
          Positioned(
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
