import 'package:flutter/material.dart';

import 'body_itembuilder_items_of_product_list.dart';


class ListItemsOfProductVertical extends StatelessWidget {
  const ListItemsOfProductVertical({super.key});

  @override
  Widget build(BuildContext context) {
    return  SliverList(
      delegate: SliverChildBuilderDelegate(
            (context, index) {
          return  const BodyItemBuilderItemsOfProductList();
        },
        childCount: 20, // Adjusted for 10 items and 9 separators
      ),
    );
  }
}