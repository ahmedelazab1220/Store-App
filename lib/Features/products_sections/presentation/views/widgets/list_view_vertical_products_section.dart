import 'package:flutter/material.dart';

import 'body_item_builder_list_view_vertical.dart';

class ListViewVerticalProductsSection extends StatelessWidget {
  const ListViewVerticalProductsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        childCount: 20,
            (context, index) {
          return const BodyItemBuilderListViewVertical();
        },
      ),
    );
  }
}
