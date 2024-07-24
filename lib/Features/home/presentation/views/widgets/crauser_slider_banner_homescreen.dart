import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:storeapp/Core/utils/colors.dart';
import 'package:storeapp/Features/home/data/Banner_list.dart';
import 'package:storeapp/Features/home/presentation/views/widgets/banner_homeScreen.dart';

class CrauserSliderBannerHomeScreen extends StatefulWidget{
  const CrauserSliderBannerHomeScreen({super.key});

  @override
  State<CrauserSliderBannerHomeScreen> createState() => _BannerHomeScreenState();
}

class _BannerHomeScreenState extends State<CrauserSliderBannerHomeScreen> {
  int currentPage=0;

  @override
  Widget build(BuildContext context) {
    return Stack(
          alignment: Alignment.bottomCenter,
        children: [
          CarouselSlider.builder(
            itemCount: 3,
            itemBuilder: (
                BuildContext context, int itemIndex, int pageViewIndex) {
               return BannerHomeScreen(bannerModel: BannerList[itemIndex]);
            },
            options: CarouselOptions(
              autoPlay: true,
              enlargeCenterPage: true,
              viewportFraction: 0.9,
              aspectRatio: 2.0,
              initialPage: 0,
              onPageChanged: (value,v){
                setState(() {
                  currentPage=value;
                });
              },
              // enlargeFactor: 0.1,

            ),
          ),
          Positioned(
            bottom: 20,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                for (int i = 0; i < BannerList.length; i++)
                  Container(
                    margin: const EdgeInsets.all(3),
                    height: 15,
                    width:i==currentPage?12 :8,
                    decoration: BoxDecoration(
                        color: i==currentPage? AppColors.violetBlueColor: const Color(0xffC4D2F3),
                        shape: BoxShape.circle
                    ),
                  ),


              ],
            ),
          ),
        ]
    );
  }
}

/*

Stack(
        alignment: Alignment.bottomRight,
        children: [
          Container(
            padding: const EdgeInsets.only(top: 10,left: 10,right: 10,bottom: 40),
            margin: const EdgeInsets.only(top: 24, right: 18, bottom: 10,left: 18),
            width: double.infinity,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: AppColors.aliceBlueColor
            ),
            child: Row(
              children: [
                 Expanded(
                  child: Image(image: AssetImage("assets/images/breads.png"),
                    width:MediaQuery.of(context).size.width*0.2 ,
                    height:MediaQuery.of(context).size.height*0.13 ,
                  ),
                ),
                 SizedBox(
                  width: MediaQuery.of(context).size.width*0.4,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text("مخبوزات فريش",
                        textAlign: TextAlign.right,
                        style: Styles.textStyle30,
                      ),
                      const SizedBox(height: 10,),
                      Text(
                        "خيار مثالي لتناول وجبة خفيفة لذيذة في اي وقت",
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
              child:   Text( '%خصم 20',
                style: Styles.textStyle32
              ),
            ),
          ),
        ]
    );
 */