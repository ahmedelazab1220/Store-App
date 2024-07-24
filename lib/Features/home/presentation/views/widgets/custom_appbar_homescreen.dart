import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:storeapp/Core/utils/images.dart';
import 'package:storeapp/Core/utils/styles.dart';
import 'package:storeapp/Core/utils/text.dart';
import 'package:storeapp/Features/notification/presentation/views/notification_screen.dart';
import '../../../../../Core/utils/colors.dart';
import '../../../../../Core/utils/routers.dart';

class CustomAppbarHomeScreen extends StatelessWidget {
  const CustomAppbarHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [

        Padding(
          padding:  EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width*0.07,vertical: MediaQuery.of(context).size.height*0.02),
          child: SizedBox(
            height: MediaQuery.of(context).size.height*0.1,
            child: Stack(
              children: [
                Row(
                  children: [
                    //Navigate to product in  car
                    GestureDetector(
                      child: SvgPicture.asset(AppImages.kCarShopping),
                      onTap: (){},
                    ),
                    SizedBox(width: MediaQuery.of(context).size.width*0.07,),
                    GestureDetector(child: Stack(
                      alignment: Alignment.topRight,
                      children: [
                        SizedBox(
                            width: MediaQuery.of(context).size.width*0.07,
                            child: GestureDetector(
                                onTap: (){
                                  GoRouter.of(context)
                                      .push(AppRouter.kNotification);
                                  // Navigator.push(context, MaterialPageRoute(builder: (context) => NotificationScreen(),));

                                },
                                child: SvgPicture.asset(AppImages.kNoticesIcon))),
                        const CircleAvatar(radius: 3,backgroundColor: AppColors.lILACSPRINGColor,),
                      ],
                    ), onTap: (){},),
                    const Spacer(),
                    GestureDetector(child: SvgPicture.asset(AppImages.kDrawerIcon), onTap: () => Scaffold.of(context).openEndDrawer(),),
                  ],
                ),
                Positioned(
                    right: 0,
                    left: 0,
                    child: SvgPicture.asset(AppImages.kAppBarHomeScreen)),
              ],
            ),
          ),
        ),
        // Custom Container ابحث عن طلباتك
        // this container when click in  this go to the new page and show  all items in app and search in all item
        GestureDetector(
          onTap: (){
            // Navigate to the new page
          },
          child: Container(
            margin:  EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width*0.08,),
            padding:  EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width*0.055,vertical: MediaQuery.of(context).size.height*0.02,),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(
                  color:  AppColors.greyCloudColor,
                  width: 0.8,
                )
            ),
            child: Row(
              textDirection: TextDirection.rtl,
              children: [
                const Icon(Icons.search,
                  color:  AppColors.greyCloudColor,
                ),
                const SizedBox(width: 10,),
                Text(AppText.searchForOrderScreen,
                  textAlign: TextAlign.right,
                  style: Styles.textStyle17
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
