import 'package:flutter/material.dart';
import '../../../../../Core/utils/colors.dart';
import '../../../../../Core/utils/styles.dart';

class BodyItemBuilderListInBasket extends StatelessWidget {
  const BodyItemBuilderListInBasket({super.key});

  @override
  Widget build(BuildContext context) {
    return  Stack(
      children: [
       Container(
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
    ),
        Positioned(
          left: 24,
          top: 1,
          child: GestureDetector(
            onTap: (){
              showDialog(
                context: context,
                builder: (context) {
                  return AlertDialog(
                    content: Text("هل انت متأكد من حذف هذا المنتج؟",
                      textAlign: TextAlign.right,
                      textDirection: TextDirection.rtl,
                      style: Styles.textStyle33,
                    ),
                    actionsAlignment:MainAxisAlignment.center ,
                    actions: [
                      GestureDetector(
                        child: Container(
                          margin: EdgeInsets.only(right: 25),
                          padding: EdgeInsets.symmetric(horizontal: 40,vertical: 8),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              gradient: LinearGradient(
                                  colors: [
                                    Color(0xff1A48BF),
                                    Color(0xff5C22A1),
                                  ]
                              )
                          ),
                          child:  Text("لا",
                            style: Styles.textStyle51,
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: (){},
                        child: Container(
                          padding: EdgeInsets.symmetric(horizontal: 33,vertical: 8),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: Color(0xffBC2C2C),
                          ),
                          child:  Text("نعم",
                            style: Styles.textStyle51,
                          ),
                        ),
                      ),
                    ],
                  );
                },);
            },
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 16,vertical: 6),
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(0),
                      bottomLeft: Radius.circular(2),
                      bottomRight: Radius.circular(30)),
                  color: Color(0xffD21E1E),

              ),
              child: Text('حذف', style: Styles.textStyle32),
            ),
          ),
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