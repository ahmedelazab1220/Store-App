import 'package:flutter/material.dart';
import 'custom_appbar_notification_screen.dart';
import 'list_notification_NotificationScreen.dart';

class NotificationFoundBody extends StatelessWidget {
  const NotificationFoundBody({super.key});

  @override
  Widget build(BuildContext context) {
    bool notificationFound = false;
    return const CustomScrollView(
      slivers: [
        SliverToBoxAdapter(child: CustomAppbarNotificationScreen()),
        ListNotificationScreen(),
      ],
    );
  }
}
