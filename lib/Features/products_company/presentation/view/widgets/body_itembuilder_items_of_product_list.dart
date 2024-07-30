import 'package:flutter/material.dart';
import '../../../../../Core/utils/colors.dart';
import '../../../../../Core/utils/styles.dart';

class BodyItemBuilderItemsOfProductList extends StatelessWidget {
  const BodyItemBuilderItemsOfProductList({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
        children: [
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 23,vertical: 5),
            padding: const EdgeInsets.only(top: 16,bottom: 23),
            width: double.infinity,
            decoration:BoxDecoration(
                color: const Color(0xffF3F5FC),
                borderRadius: BorderRadius.circular(20)
            ),
            child: Row(
              children: [
                const Padding(
                  padding: EdgeInsets.only(left: 78),
                  child: Image(image: AssetImage("assets/images/chipsy_item.png"),
                    width: 45,
                    height: 56,
                  ),
                ),
                SizedBox(
                  width: 185,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text("عبوة شيبسي حجم 10 جنيه ",
                          textDirection: TextDirection.rtl,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          style: Styles.textStyle42,
                        ),
                        Text("عدد 24 كيس",
                          textDirection: TextDirection.rtl,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: Styles.textStyle42,
                        ),
                        const SizedBox(height: 10,),
                        Row(
                          textDirection: TextDirection.rtl,
                          children: [
                            Text(" : السعر",
                              style: Styles.textStyle35,),
                            Text(" 200 ج",
                              textDirection: TextDirection.rtl,
                              style:
                              Styles.textStyle43,
                            ),
                          ],
                        )

                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
          Positioned(
            left: 23,
            top: 6,
            child: Container(
              padding: const EdgeInsets.all(10),
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(0),
                      bottomLeft: Radius.circular(2),
                      bottomRight: Radius.circular(30)
                  ),
                  gradient: LinearGradient(
                      colors: [
                        AppColors.bluePurpleColor,
                        AppColors.purpleHeartColor,
                      ]
                  )
              ),
              child:   Text( '%20  خصم',
                  style: Styles.textStyle32
              ),
            ),
          ),
        ]
    );
  }
}
