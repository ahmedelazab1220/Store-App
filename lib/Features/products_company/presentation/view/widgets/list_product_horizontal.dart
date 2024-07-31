import 'package:flutter/material.dart';
import 'body_itembuilder_prducts_hotizontal.dart';

class ListProductHorizontal extends StatelessWidget {
  const ListProductHorizontal({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height*0.12,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return const BodyItemBuilderProductsHorizontal();
          },
          separatorBuilder: (context, index) => const SizedBox(width: 16,),
          itemCount:10,
      ),
    );
  }
}
