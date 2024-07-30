import 'package:flutter/material.dart';
import '../../../../../Core/utils/colors.dart';
import '../../../../../Core/utils/styles.dart';
import 'body_item_builder_list_view_vertical.dart';
import 'custom_appbar_products_sections_screen.dart';
import 'list_view_vertical_products_section.dart';

class ProductsSectionsBody extends StatelessWidget {
  const ProductsSectionsBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(child: CustomAppbarProductsSectionsScreen()),
        ListViewVerticalProductsSection(),
      ]
    );
  }
}
