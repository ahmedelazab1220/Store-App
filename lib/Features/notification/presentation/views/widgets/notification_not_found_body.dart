import 'package:flutter/material.dart';
import '../../../../../Core/shared_widget/custom_appbar.dart';
import '../../../../../Core/utils/colors.dart';
import '../../../../../Core/utils/images.dart';
import '../../../../../Core/utils/styles.dart';


class NotificationNotFoundBody extends StatelessWidget {
  const NotificationNotFoundBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const CustomAppbar(text: 'الأشعارات',colorDotNotification: AppColors.white,image: AppImages.kNotificationIconWhite,),
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
