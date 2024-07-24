import 'package:flutter/material.dart';
import '../../../../../Core/utils/styles.dart';
import 'custom_appbar_notification_screen.dart';

class NotificationNotFoundBody extends StatelessWidget {
  const NotificationNotFoundBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const CustomAppbarNotificationScreen(),
        SizedBox(height: MediaQuery.of(context).size.height*0.15,),
        const Image(image: AssetImage("assets/images/notification_not_found_body2.png"),
        width: 228,
          height: 228,
        ),
        Text("لا يوجد اشعارات الأن",
        style: Styles.textStyle38,
        ),
        const SizedBox(height: 10,),
        Text("ليس لديك اي اشعار حتي الأن يرجي العودة في وقت لاحق",
          textAlign: TextAlign.center,

        style: Styles.textStyle39,
        )
      ],
    );
  }
}
