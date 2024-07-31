import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../Core/utils/colors.dart';
import '../../../../../Core/utils/styles.dart';
import '../utils/images.dart';
import 'notifaction_and_dot.dart';

class CustomAppbar extends StatelessWidget {
  const CustomAppbar({super.key, required this.text, this.image, this.colorDotNotification});

  final String text;
  final String? image;
  final Color? colorDotNotification;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 30),
      child: Container(
        padding: const EdgeInsets.only(top: 40, bottom: 20,left: 60),
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
            Spacer(),
            if (image != null&& colorDotNotification==null)Image(image: AssetImage(image!),
            width: 24,
              height: 24,
            ),
            if (colorDotNotification !=null &&image!=null) NotificationAndDot(colorDot:colorDotNotification! ,widget: SvgPicture.asset(image!,),),
            SizedBox(width: 15,),
            Text(
              text,
              textAlign: TextAlign.center,
              style: Styles.textStyle36,
            ),
            Spacer(),
            IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const Icon(
                Icons.arrow_forward_ios,
                color: AppColors.white,
              ),
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.05,
            ),
          ],
        ),
      ),
    );
  }
}
