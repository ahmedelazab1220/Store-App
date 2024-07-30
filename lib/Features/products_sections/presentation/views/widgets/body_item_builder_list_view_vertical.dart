import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';
import '../../../../../Core/utils/colors.dart';
import '../../../../../Core/utils/routers.dart';
import '../../../../../Core/utils/styles.dart';

class BodyItemBuilderListViewVertical extends StatelessWidget {
  const BodyItemBuilderListViewVertical({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: () =>   GoRouter.of(context)
              .push(AppRouter.kProductDetailsScreen),
          child: Stack(children: [
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 23, vertical: 5),
              padding: const EdgeInsets.only(top: 16, bottom: 23),
              width: double.infinity,
              decoration: BoxDecoration(
                  color: const Color(0xffF3F5FC),
                  borderRadius: BorderRadius.circular(20)),
              child: Row(
                children: [
                   SizedBox(
                    width: MediaQuery.of(context).size.width*0.27,
                    child:  Padding(
                      padding: EdgeInsets.only(left: 20,top: 40),
                      child: Image(
                        image: AssetImage("assets/images/picket_pepsi.png"),
                        height: 60,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width*0.6,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          NameOfProduct(text: "بيبسى"),
                          SizedBox(height: 10,),
                          Text(
                            "باكيت كانز بيبسي حجم 250 ملي",
                            textDirection: TextDirection.rtl,
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            style: Styles.textStyle42,
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Row(
                            textDirection: TextDirection.rtl,
                            children: [
                              Text(
                                " السعر :",
                                textDirection: TextDirection.rtl,
                                style: Styles.textStyle35,
                              ),
                              Text(
                                " 200 ج",
                                textDirection: TextDirection.rtl,
                                style: Styles.textStyle43,
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
                        bottomRight: Radius.circular(30)),
                    gradient: LinearGradient(colors: [
                      AppColors.bluePurpleColor,
                      AppColors.purpleHeartColor,
                    ])),
                child: Text('%20  خصم', style: Styles.textStyle32),
              ),
            ),
          ]),
        ),
        const SizedBox(
          height: 7,
        ),
      ],
    );
  }
}


class NameOfProduct extends StatelessWidget {
  final String text;

  const NameOfProduct({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    List<String> words = text.split(' ');
    String truncatedText = words.length > 2 ? '${words[0]} ${words[1]}' : text;

    return Text(
        truncatedText,
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
        textDirection: TextDirection.rtl,
        style:Styles.textStyle45
    );
  }
}

