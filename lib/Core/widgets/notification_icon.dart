import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:storeapp/Core/utils/images.dart';

class NotificationIcon extends StatelessWidget {
  const NotificationIcon({
    super.key,
    required this.colorDot,
    this.onTap,
  });

  final Color colorDot;
  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          SvgPicture.asset(
            AppImages.kNotificationIcon,
            height: 26.0,
          ),
          Positioned(
            top: -4,
            left: 24,
            child: CircleAvatar(
              radius: 3,
              backgroundColor: colorDot,
            ),
          ),
        ],
      ),
    );
  }
}
