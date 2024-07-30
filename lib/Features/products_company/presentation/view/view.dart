import 'package:flutter/material.dart';
import 'package:storeapp/Features/products_company/presentation/view/widgets/products_company_body.dart';

import '../../../../Core/utils/colors.dart';

class ProductsCompanyScreen extends StatelessWidget {
  const ProductsCompanyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: ProductsCompanyBody(),

    );
  }
}
