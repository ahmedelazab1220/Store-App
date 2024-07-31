import 'package:flutter/material.dart';
import 'package:storeapp/Core/utils/colors.dart';
import 'package:storeapp/Features/products_sections/presentation/views/widgets/products_sections_body.dart';

class ProductsSectionScreen extends StatelessWidget {
  const ProductsSectionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: AppColors.white,
      body: ProductsSectionsBody(),
    );
  }
}
