import 'package:flutter/material.dart';

import '../../../../../Core/utils/colors.dart';
import '../../../../../Core/utils/styles.dart';

class CustomAppbarProductDetails extends StatelessWidget {
  const CustomAppbarProductDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.only(bottom: 30),
      child: Container(
        padding: const EdgeInsets.only(top: 40, bottom: 20, left: 70),
        width: double.infinity,
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(0),
            topRight: Radius.circular(0),
            bottomLeft: Radius.circular(25),
            bottomRight: Radius.circular(25),
          ),
          gradient: LinearGradient(
            colors: [
              AppColors.purpleIrisColor,
              AppColors.ceruleanBlueColor,
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: Text(
                "تفاصيل المنتج",
                textAlign: TextAlign.center,
                style: Styles.textStyle36,
              ),
            ),
            IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: const Icon(
                  Icons.arrow_forward_ios,
                  color: AppColors.white,
                )),
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.05,
            ),
          ],
        ),
      ),
    );
  }
}
