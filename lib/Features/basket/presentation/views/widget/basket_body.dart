import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../../../Core/shared_widget/custom_appbar.dart';
import '../../../../../Core/shared_widget/custom_button.dart';
import '../../../../../Core/utils/styles.dart';
import 'list_items_in_basket.dart';

class BasketBody extends StatelessWidget {
  const BasketBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const CustomAppbar(text: 'السله', image: "assets/images/teenyicons_cart-outline.png",),
        const ListItemsInBasket(),
         const SizedBox(height: 10),
        GestureDetector(
          onTap: (){},
          child: Container(
            width: double.infinity,
            margin: const EdgeInsets.only(left: 23, right: 23, bottom: 7),
            padding: const EdgeInsets.symmetric(vertical: 16),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: const Color(0xffDFE1E8).withOpacity(0.5),
            ),
            child: Center(
              child:  Row(
                mainAxisAlignment: MainAxisAlignment.center,
                textDirection: TextDirection.rtl,
                children: [
                  Text(
                    " الاجمالى :",
                    textDirection: TextDirection.rtl,
                    style: Styles.textStyle35,
                  ),
                  const SizedBox(width: 10,),
                  Text(
                    " 200 ج",
                    textDirection: TextDirection.rtl,
                    style: Styles.textStyle43,
                  ),
                ],
              ),
            ),
          ),
        ),
        CustomButton(text: 'اضف الي السلة', onTap: (){},)
      ],
    );
  }
}


