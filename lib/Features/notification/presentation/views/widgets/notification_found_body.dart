import 'package:flutter/material.dart';
import '../../../../../Core/shared_widget/custom_appbar.dart';
import '../../../../../Core/utils/colors.dart';
import '../../../../../Core/utils/images.dart';

import 'list_notification_NotificationScreen.dart';

class NotificationFoundBody extends StatelessWidget {
  const NotificationFoundBody({super.key});

  @override
  Widget build(BuildContext context) {
    bool notificationFound = false;
    return  CustomScrollView(
      slivers: [
        SliverToBoxAdapter(child: CustomAppbar(text: 'الأشعارات',colorDotNotification: AppColors.white,image: AppImages.kNotificationIconWhite,)),
        ListNotificationScreen(),
      ],
    );
  }
}
