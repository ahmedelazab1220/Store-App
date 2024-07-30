import 'package:flutter/material.dart';
import 'package:storeapp/Core/utils/styles.dart';
import '../../../../../Core/utils/colors.dart';
import 'custom_appbar_product_details.dart';
import 'custom_panner.dart';

class ProductDetailsBody extends StatelessWidget {
  const ProductDetailsBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomAppbarProductDetails(),
        CustomBanner(),
        SizedBox(height: 10,),
        Container(
          margin: EdgeInsets.symmetric(horizontal: 23),
          padding: EdgeInsets.symmetric(horizontal:24,vertical:20 ),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Color(0xffF3F5FC)
          ),
          child: Column(
            children: [
              CustomText(
                  text1: "القسم",
                  text2: "المشروبات",
                  text3: "الشركة",
                  text4: "بيبسي"
              ),
              SizedBox(height: 20,),
              CustomText(
                  text1: "النوع",
                  text2: "كانز",
                  text3: "الحجم",
                  text4: "250 ml"
              ),
              SizedBox(height: 16,),
              Divider(
                color: Color(0xff323AB4),
              ),
              SizedBox(height: 16,),
              Align(
                alignment: Alignment.centerRight,
                child: Text("حدد الكمية",
                textAlign: TextAlign.right,
                style: Styles.textStyle46,
                ),
              ),
              SizedBox(height: 24,),
              Container(
                height: 40,
                width: 170,
                decoration: BoxDecoration(
                    color: Colors.white,
                  borderRadius: BorderRadius.circular(20)
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: (){
                        // setState(() {
                        //   widget.item.count++;
                        // });
                      },
                      child: CircleAvatar(
                        radius: 20,
                        backgroundColor: Color(0xff3C312F),
                        child: Icon(
                          Icons.remove,
                          color: Colors.white,
                        ),
                      ),
                    ),

                    Text("3",
                      textAlign: TextAlign.center,
                      style: Styles.textStyle47,
                    ),

                    GestureDetector(
                      onTap: (){
                        // setState(() {
                        //   widget.item.count++;
                        // });
                      },
                      child: CircleAvatar(
                        radius: 20,
                        backgroundColor: Color(0xff3C312F),
                        child: Icon(
                          Icons.add,
                          color: Colors.white,
                        ),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(height: 30,),
              Row(
                textDirection: TextDirection.rtl,
                children: [
                    Text("سعر الباكيت :",
                    textDirection: TextDirection.rtl,
                      textAlign: TextAlign.right,
                      style: Styles.textStyle48,
                    ),
                     SizedBox(width: 10,),
                    Text("150 ج",
                    textDirection: TextDirection.rtl,
                    style: Styles.textStyle49,

                    )
                ],
              ),
              SizedBox(height: 12,),
              Row(
                textDirection: TextDirection.rtl,
                children: [
                  Text("الأجمالي :",
                    textDirection: TextDirection.rtl,
                    textAlign: TextAlign.right,
                    style: Styles.textStyle48,
                  ),
                  SizedBox(width: 40,),
                  Text("450 ج",
                    textDirection: TextDirection.rtl,
                    style: Styles.textStyle50,

                  )
                ],
              ),

            ],
          )
        ),

      ],
    );
  }
}


class CustomText extends StatelessWidget {
  const CustomText({super.key, required this.text1, required this.text2, required this.text3, required this.text4});
    final String text1;
    final String text2;
    final String text3;
    final String text4;
  @override
  Widget build(BuildContext context) {
    return Row(
      textDirection: TextDirection.rtl,
      children: [
        Text("$text1 :",

          textDirection: TextDirection.rtl,
          style: Styles.textStyle38,
        ),
        SizedBox(width: 12,),
        Expanded(
          child: Text("$text2 ",
          
            textDirection: TextDirection.rtl,
            style: Styles.textStyle44,
          ),
        ),
        Text("$text3 :",
          textDirection: TextDirection.rtl,
          style: Styles.textStyle38,
        ),
        SizedBox(width: 12,),
        Text("$text4 ",
          textDirection: TextDirection.rtl,
          style: Styles.textStyle44,
        ),

      ],
    );
  }
}
/*
 Text("$text1 :",
          textAlign:  TextAlign.right,
          textDirection: TextDirection.rtl,
          style: Styles.textStyle38,
        ),
        SizedBox(width: 12,),
        Text("$text2 ",
          textAlign:  TextAlign.right,
          textDirection: TextDirection.rtl,
          style: Styles.textStyle44,
        ),
 */
