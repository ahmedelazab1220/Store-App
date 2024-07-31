import 'package:flutter/material.dart';
import 'package:storeapp/Core/utils/styles.dart';
import '../../../../../Core/utils/colors.dart';
import 'custom_appbar_product_details.dart';
import 'custom_button.dart';
import 'custom_panner.dart';
import 'detials_container.dart';

class ProductDetailsBody extends StatelessWidget {
  const ProductDetailsBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(child: CustomAppbarProductDetails()),
        SliverToBoxAdapter(child: CustomBanner()),
        SliverToBoxAdapter(child: SizedBox(height: 24,)),
        SliverToBoxAdapter(
          child: DetialsContainer()
        ),
        SliverToBoxAdapter(child: SizedBox(height: 40,)),
        SliverToBoxAdapter(
          child: CustomButton(),
        ),
      ]
    );
  }
}


