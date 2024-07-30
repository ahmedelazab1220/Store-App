import 'package:flutter/material.dart';

import 'custom_app_bar_products_company_screen.dart';
import 'custom_divider.dart';
import 'list_items_of_product_vertical.dart';
import 'list_product_horizontal.dart';

class ProductsCompanyBody extends StatelessWidget {
  const ProductsCompanyBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
     slivers: [
       SliverToBoxAdapter(child: CustomAppBarProductsCompanyScreen()),
       SliverToBoxAdapter(child: ListProductHorizontal()),
       SliverToBoxAdapter(child: CustomDivider()),
       SliverToBoxAdapter(child: SizedBox(height: 10,)),
       ListItemsOfProductVertical(),
     ],
      );
  }
}
