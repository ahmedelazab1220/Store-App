import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:storeapp/Core/utils/colors.dart';
import 'package:storeapp/Core/utils/injection_container.dart';
import 'package:storeapp/Features/discounts/data/repos/discounted_product_repo_implementation.dart';
import 'package:storeapp/Features/discounts/presentation/view/widgets/discounted_product_body.dart';
import 'package:storeapp/Features/discounts/presentation/view_model/discounted_product_cubit/discounted_product_cubit.dart';

class DiscountedProductScreen extends StatelessWidget {
  const DiscountedProductScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => DiscountedProductCubit(
        discountedProductRepo:
            serviceLocator<DiscountedProductRepoImplementation>(),
      )..getAllDiscountedProduct(),
      child: const Scaffold(
        backgroundColor: AppColors.white,
        body: DiscountedProductBody(),
      ),
    );
  }
}
