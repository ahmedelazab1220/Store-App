import 'package:flutter/material.dart';

import '../../../../../Core/utils/styles.dart';

class BodyItemBuilderListInBasket extends StatelessWidget {
  const BodyItemBuilderListInBasket({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(
      width: double.infinity,
      margin: const EdgeInsets.symmetric(horizontal: 23),
      padding: const EdgeInsets.only(left: 16,right: 16,bottom: 16, top: 21),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: const Color(0xffF3F5FC),
      ),
      child: Row(
        children: [
          SizedBox(
            width: MediaQuery.of(context).size.width/2-64,
            child: Column(
              children: [
                const SizedBox(
                    width: 90,
                    height: 90,
                    child: Image(image: AssetImage("assets/images/pasket_pepsi.png"),)),
                // SizedBox(height: 16,),
                Container(
                  height: 27,
                  width: 115,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(60)
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
                            radius: 14,
                            child: Container(
                              width: 40,
                              height: 40,
                              decoration: const BoxDecoration(
                                  shape: BoxShape.circle,
                                  gradient: LinearGradient(
                                    colors: [
                                      Color(0xff703FA9),
                                      Color(0xff1A48BF),
                                    ],
                                    begin: Alignment.topCenter,
                                    end: Alignment.bottomCenter,
                                  )
                              ),
                              child: const Icon(
                                Icons.remove,
                                color: Colors.white,
                              ),
                            )
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
                            radius: 14,
                            child: Container(
                              width: 40,
                              height: 40,
                              decoration: const BoxDecoration(
                                  shape: BoxShape.circle,
                                  gradient: LinearGradient(
                                    colors: [
                                      Color(0xff703FA9),
                                      Color(0xff1A48BF),
                                    ],
                                    begin: Alignment.topCenter,
                                    end: Alignment.bottomCenter,
                                  )
                              ),
                              child: const Icon(
                                Icons.add,
                                color: Colors.white,
                              ),
                            )
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width/2-20,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                const NameOfProduct(text: "بيبسى"),
                const SizedBox(height: 10,),
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
        ],
      ),
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