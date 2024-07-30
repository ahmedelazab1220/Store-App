import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:storeapp/Core/utils/images.dart';
import 'package:storeapp/Core/utils/text.dart';
import '../../../../../Core/shared_widget/notifaction_and_dot.dart';
import '../../../../../Core/utils/colors.dart';
import '../../../../../Core/utils/styles.dart';

class CustomAppbarNotificationScreen extends StatelessWidget {
  const CustomAppbarNotificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 30),
      child: Container(
         padding: const EdgeInsets.only(top: 40,bottom: 20,left: 60
         ),
        width: double.infinity,
        decoration:const BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(0),
            topRight: Radius.circular(0),
            bottomLeft: Radius.circular(25),
            bottomRight: Radius.circular(25),
          ),
          gradient: LinearGradient(
            colors:[
              AppColors.purpleIrisColor,
              AppColors.ceruleanBlueColor,
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Spacer(),
            NotificationAndDot(colorDot: AppColors.white, widget: SvgPicture.asset(AppImages.kNotificationIconWhite,),),
            const SizedBox(width: 8,),
            Text(AppText.notification,
              style: Styles.textStyle36,
            ),
            const Spacer(),
            IconButton(onPressed: (){
              Navigator.pop(context);
            }, icon: const Icon(Icons.arrow_forward_ios,
              color: AppColors.white,
            )),
             SizedBox(width: MediaQuery.of(context).size.width*0.05,),
          ],
        ),
      ),
    );
  }
}
