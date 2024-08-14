import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:storeapp/Core/widgets/custom_error_widget.dart';
import 'package:storeapp/Features/discounts/presentation/view/widgets/custom_shimmer_loading_list.dart';
import 'package:storeapp/Features/discounts/presentation/view/widgets/discounted_product_empty_list.dart';
import 'package:storeapp/Features/discounts/presentation/view/widgets/discounted_product_list.dart';
import 'package:storeapp/Features/discounts/presentation/view_model/discounted_product_cubit/discounted_product_cubit.dart';

class DiscountedProductListBuilder extends StatelessWidget {
  const DiscountedProductListBuilder({super.key});
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<DiscountedProductCubit, DiscountedProductState>(
      builder: (context, state) {
        if (state is DiscountedProductLoadedState) {
          if (state.discountedProductModel.isEmpty) {
            return const DiscountedProductEmptyList();
          }
          return DiscountedProductList(
            discountedProducts: state.discountedProductModel,
          );
        } else if (state is DiscountedProductLoadingFailedState) {
          return SliverToBoxAdapter(
            child: CustomErrorWidget(errorMessage: state.message),
          );
        } else {
          return const CustomShimmerLoadingList();
        }
      },
    );
  }
}
