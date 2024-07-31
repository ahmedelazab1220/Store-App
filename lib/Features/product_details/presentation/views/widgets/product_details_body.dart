import 'package:flutter/material.dart';
import '../../../../../Core/shared_widget/custom_appbar.dart';
import '../../../../../Core/shared_widget/custom_button.dart';
import 'custom_panner.dart';
import 'detials_container.dart';

class ProductDetailsBody extends StatelessWidget {
  const ProductDetailsBody({super.key});

  @override
  Widget build(BuildContext context) {
    return  CustomScrollView(
      slivers: [
        const SliverToBoxAdapter(child: CustomAppbar(text: "تفاصيل المنتج",)),
        const SliverToBoxAdapter(child: CustomBanner()),
        const SliverToBoxAdapter(child: SizedBox(height: 24,)),
        const SliverToBoxAdapter(
          child: DetialsContainer()
        ),
        const SliverToBoxAdapter(child: SizedBox(height: 40,)),
        SliverToBoxAdapter(
          child: CustomButton(text: 'اضف الي السلة', onTap: (){},),
        ),
      ]
    );
  }
}


