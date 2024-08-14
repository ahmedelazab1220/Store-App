import 'package:flutter/widgets.dart';
import 'package:storeapp/Features/discounts/presentation/view/widgets/discounted_product_list_builder.dart';

class DiscountedProductBody extends StatelessWidget {
  const DiscountedProductBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        DiscountedProductListBuilder(),
      ],
    );
  }
}
