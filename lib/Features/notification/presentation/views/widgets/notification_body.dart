import 'package:flutter/material.dart';
import 'notification_found_body.dart';
import 'notification_not_found_body.dart';

class NotificationBody extends StatelessWidget {
  const NotificationBody({super.key});

  @override
  Widget build(BuildContext context) {
    bool notificationFound = false;
    return  notificationFound==false? const NotificationNotFoundBody():const NotificationFoundBody();
  }
}

/*Padding(
               padding: const EdgeInsets.symmetric(horizontal:23 ),
               child: Card(
                 color: AppColors.magnoliaColor,
                 child: ListTile(
                   contentPadding: EdgeInsets.only(right: 16,top: 25,bottom: 25,left: 25,),
                   dense: true,
                  //visualDensity: VisualDensity(horizontal: 0, vertical:0),
                   title: Text("Mr.candy",
                   textAlign: TextAlign.right,
                   style: Styles.textStyle9,
                   ),
                   subtitle: Text("عرض خاص علي قسم المشروبات اشتري عدد اتنين باكيت و احصل علي الثالثة بنصف الثمن",
                   textAlign: TextAlign.right,
                   style: Styles.textStyle37,
                   ),
                   trailing: Stack(
                     alignment: Alignment.center,
                     children: [
                       SvgPicture.asset("assets/icons/circle_avater_noification_graidient.svg"),
                       SvgPicture.asset("assets/icons/child_circle_avatar.svg"),

                     ],
                   ),
                 ),
               ),
             )*/