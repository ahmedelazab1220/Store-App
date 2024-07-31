import 'package:flutter/material.dart';

import 'body_item_builder_list_in_basket.dart';

class ListItemsInBasket extends StatelessWidget {
  const ListItemsInBasket({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.separated(
        padding: EdgeInsets.all(0),
          itemBuilder: (context, index) {
            return const BodyItemBuilderListInBasket();
          },
          separatorBuilder: (context, index) => const SizedBox(height: 10,),
          itemCount: 10
      ),
    );
  }
}

