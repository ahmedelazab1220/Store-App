import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../utils/images.dart';

// ignore: must_be_immutable
class NotificationAndDot extends StatelessWidget {
   NotificationAndDot({super.key, required this.colorDot, required this.widget, this.onTap});
   final Color colorDot;
   final Widget widget;
  Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Stack(
        alignment: Alignment.topRight,
        children: [
          SizedBox(
              width: MediaQuery.of(context).size.width*0.07,
              child: GestureDetector(
                  onTap: onTap,
                  child: SvgPicture.asset(AppImages.kNoticesIcon))
          ),
           CircleAvatar(radius: 3,backgroundColor:colorDot,),
        ],
      ), onTap: (){},);
  }
}
