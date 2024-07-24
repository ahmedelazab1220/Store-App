import 'package:flutter/material.dart';
import 'package:storeapp/Features/notification/data/notification_list.dart';
import 'body_itembuilder_notification_list.dart';

class ListNotificationScreen extends StatelessWidget {
  const ListNotificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
            (context, index) {
          return Column(
            children: [
              BodyItemBuilderNotificationList(
                title: notificationList[index].title,
              ),
              SizedBox(height: MediaQuery.of(context).size.height*0.015),
            ],
          );
        },
        childCount: notificationList.length,
      ),
    );
  }
}
