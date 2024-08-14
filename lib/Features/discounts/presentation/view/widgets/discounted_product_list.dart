import 'package:flutter/widgets.dart';
import 'package:storeapp/Features/discounts/data/models/discounted_product_model.dart';
import 'package:storeapp/Features/discounts/presentation/view/widgets/discounted_product_list_item.dart';

class DiscountedProductList extends StatelessWidget {
  const DiscountedProductList({
    super.key,
    required this.discountedProducts,
  });

  final List<DiscountedProductModel> discountedProducts;

  @override
  Widget build(BuildContext context) {
    return SliverPadding(
      padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 15),
      sliver: SliverList(
        delegate: SliverChildBuilderDelegate(
          (context, index) {
            return Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 15.0,
                vertical: 10,
              ),
              child: DiscountedProductListItem(
                discountedProductModel: discountedProducts[index],
              ),
            );
          },
          childCount: discountedProducts.length,
        ),
      ),
    );
  }
}
