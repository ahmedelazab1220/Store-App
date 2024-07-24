import 'package:flutter/material.dart';
import 'package:storeapp/Features/home/presentation/view_model/banner_model.dart';

import '../../../../../Core/utils/colors.dart';
import '../../../../../Core/utils/styles.dart';

class BannerHomeScreen extends StatelessWidget {
  const BannerHomeScreen({super.key, required this.bannerModel});
   final BannerModel bannerModel;
  @override
  Widget build(BuildContext context) {
    return Stack(
        alignment: Alignment.bottomRight,
        children: [
          Container(
            padding: const EdgeInsets.only(top: 10,left: 10,right: 10,bottom: 40),
            margin: const EdgeInsets.only(top: 24, right:8, bottom: 10,left: 8),
            width: double.infinity,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: AppColors.aliceBlueColor
            ),
            child: Row(
              children: [
                Expanded(
                  child: Image(image: AssetImage(bannerModel.image),
                    width:MediaQuery.of(context).size.width*0.2 ,
                    height:MediaQuery.of(context).size.height*0.13 ,
                  ),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width*0.4,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(bannerModel.title,
                        textAlign: TextAlign.right,
                        style: Styles.textStyle30,
                      ),
                      const SizedBox(height: 10,),
                      Text(
                          bannerModel.discribtion,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.right,
                          style: Styles.textStyle31
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
          Positioned(
            right: 19,
            bottom: 11,
            child: Container(
              padding: const EdgeInsets.all(10),
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(35),
                      topRight: Radius.circular(0),
                      bottomLeft: Radius.circular(10),
                      bottomRight: Radius.circular(20)
                  ),
                  gradient: LinearGradient(
                      colors: [
                        AppColors.bluePurpleColor,
                        AppColors.purpleHeartColor,
                      ]
                  )
              ),
              child:   Text( '%${bannerModel.discount.toInt()}  خصم',
                  style: Styles.textStyle32
              ),
            ),
          ),
        ]
    );
  }
}
