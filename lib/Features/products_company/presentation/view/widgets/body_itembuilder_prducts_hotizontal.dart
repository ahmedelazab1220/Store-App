import 'package:flutter/material.dart';
import '../../../../../Core/utils/styles.dart';

class BodyItemBuilderProductsHorizontal extends StatelessWidget {
  const BodyItemBuilderProductsHorizontal ({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        CircleAvatar(
          radius: 25,
          backgroundColor: const Color(0xff2151A1).withOpacity(0.05),
          child:  Image(image: const AssetImage("assets/images/chipsy_item.png"),
            width: MediaQuery.of(context).size.width*0.1,
            height: MediaQuery.of(context).size.width*0.105,
          ),
        ),
        const SizedBox(height: 10,),
        const NameOfProduct(text: "طماطم",),
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
      style: Styles.textStyle34
    );
  }
}