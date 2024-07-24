import 'package:flutter/material.dart';
import 'package:storeapp/Features/notification/presentation/views/widgets/notification_body.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NotificationBody(),
    );
  }
}
