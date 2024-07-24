import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:storeapp/Core/utils/images.dart';
import 'package:storeapp/Core/utils/text.dart';
import '../../../../../Core/utils/colors.dart';
import '../../../../../Core/utils/styles.dart';

class BodyItemBuilderNotificationList extends StatelessWidget {
  const BodyItemBuilderNotificationList({super.key, required this.title});
   final String title;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 23),
          padding: const EdgeInsets.only(right: 8,top: 30,bottom: 30,left: 8,),
          width: double.infinity,
          decoration: BoxDecoration(
            color: AppColors.magnoliaColor,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              SizedBox(
                width: MediaQuery.sizeOf(context).width*0.63,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(AppText.mrCandy,
                      textAlign: TextAlign.right,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: Styles.textStyle9,
                    ),
                    Text(title,
                      maxLines: 3,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.right,
                      style: Styles.textStyle37,
                    ),
                  ],
                ),
              ),
              SizedBox(width: MediaQuery.of(context).size.width*0.025,),
              Stack(
                alignment: Alignment.center,
                children: [
                  SvgPicture.asset(AppImages.kCircleAvatarNoficationGraidient),
                  SvgPicture.asset(AppImages.kChildCircleAvatar),

                ],
              ),
            ],
          ),
        ),
        Positioned(
            left: 40,
            top: 15,
            child: SvgPicture.asset(AppImages.kRemoveIcon,
              height: 25,
              width: 25,
            )),
      ],
    );
  }
}
