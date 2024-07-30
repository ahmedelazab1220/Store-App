import 'package:flutter/material.dart';
import '../../../../../Core/utils/styles.dart';

class ListProductHorizontal extends StatelessWidget {
  const ListProductHorizontal({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height*0.12,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return  Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                CircleAvatar(
                  radius: 25,
                  backgroundColor: const Color(0xff2151A1).withOpacity(0.05),
                  child: const Image(image: AssetImage("assets/images/chipsy_item.png"),
                    width: 23,
                    height: 33,
                  ),
                ),
                const SizedBox(height: 10,),
                Text("شطة وليمون",
                  style: Styles.textStyle41,
                )
              ],
            );
          },
          separatorBuilder: (context, index) => const SizedBox(width: 16,),
          itemCount:10,
      ),
    );
  }
}
