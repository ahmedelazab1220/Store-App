import 'package:flutter/material.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';
import 'package:storeapp/Core/utils/colors.dart';
import 'package:storeapp/Core/utils/styles.dart';

class ProfileBodyOptionsListTile extends StatelessWidget {
  const ProfileBodyOptionsListTile({
    super.key,
    required this.startIcon,
    required this.title,
    required this.icon,
    this.onTap,
    this.textColor,
  });

  final String title;
  final IconData icon;
  final Color? textColor;
  final Function()? onTap;
  final bool startIcon;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: onTap,
      leading: startIcon
          ? Container(
              width: 30,
              height: 30,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100),
                color: const Color(0xFFFF4081).withOpacity(0.1),
              ),
              child: const Icon(
                LineAwesomeIcons.angle_right_solid,
                color: AppColors.kTransparent,
              ),
            )
          : const SizedBox(),
      title: Text(
        title,
        textDirection: TextDirection.rtl,
        style: Styles.textStyle19.copyWith(
          color: textColor ?? AppColors.kPrimaryColor,
        ),
      ),
      trailing: Container(
        width: 50,
        height: 50,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(100),
          color: const Color(0xFFFF4081).withOpacity(0.1),
        ),
        child: Icon(
          icon,
          color: AppColors.kPrimaryColor,
          size: 35,
        ),
      ),
    );
  }
}
