import 'package:flutter/material.dart';

class NotificationAndDot extends StatelessWidget {
  const NotificationAndDot({
    super.key,
    required this.colorDot,
    required this.widget,
    this.onTap,
  });

  final Color colorDot;
  final Widget widget;
  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Stack(
        alignment: Alignment.topRight,
        children: [
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.07,
            child: widget,
          ),
          Positioned(
            top: 0,
            right: 0,
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
