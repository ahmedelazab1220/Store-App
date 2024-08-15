import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:storeapp/Core/utils/app_apis.dart';
import 'package:storeapp/Core/utils/colors.dart';
import 'package:storeapp/Core/utils/styles.dart';
import 'package:storeapp/Features/discounts/data/models/discounted_product_model.dart';

class DiscountedProductListItem extends StatelessWidget {
  const DiscountedProductListItem({
    super.key,
    required this.discountedProductModel,
  });

  final DiscountedProductModel discountedProductModel;

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomRight,
      children: [
        Container(
          margin: const EdgeInsets.symmetric(
            horizontal: 5,
          ),
          padding: const EdgeInsets.only(
            top: 16,
            bottom: 30,
            left: 48,
            right: 20,
          ),
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.aspectRatio * 360,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: AppColors.kLavenderBlue,
          ),
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 30.0),
                child: AspectRatio(
                  aspectRatio: 4 / 8,
                  child: CachedNetworkImage(
                    fit: BoxFit.contain,
                    imageUrl:
                        "${AppApis.getImages}${discountedProductModel.image}",
                    placeholder: (context, url) => Container(
                      color: AppColors.grey,
                    ),
                    errorWidget: (context, url, error) =>
                        const Icon(Icons.error),
                  ),
                ),
              ),
              const SizedBox(width: 45),
              Flexible(
                flex: 9,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Expanded(
                      flex: 3,
                      child: Text(
                        discountedProductModel.companyName,
                        textAlign: TextAlign.right,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: Styles.textStyle22.copyWith(
                          color: AppColors.kNameProductBanner,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    const SizedBox(height: 8),
                    Expanded(
                      flex: 5,
                      child: Text(
                        discountedProductModel.description,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.right,
                        style: Styles.textStyle16.copyWith(
                          color: AppColors.kDescriptionProductBanner,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                    ),
                    const SizedBox(height: 10),
                    Row(
                      textDirection: TextDirection.rtl,
                      children: [
                        Text(
                          " السعر :",
                          textDirection: TextDirection.rtl,
                          style: Styles.textStyle14.copyWith(
                            color: AppColors.kTransparent,
                          ),
                        ),
                        Text(
                          " ${discountedProductModel.price} ج",
                          textDirection: TextDirection.rtl,
                          style: Styles.textStyle15.copyWith(
                            fontWeight: FontWeight.w800,
                            color: AppColors.kPriceColor,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
        Positioned(
          left: 5,
          top: -1,
          child: Container(
            padding: const EdgeInsets.all(10),
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20),
                topRight: Radius.circular(0),
                bottomLeft: Radius.circular(2),
                bottomRight: Radius.circular(30),
              ),
              gradient: LinearGradient(
                colors: [
                  AppColors.bluePurpleColor,
                  AppColors.purpleHeartColor,
                ],
              ),
            ),
            child: Text(
              discountedProductModel.discount.toString(),
              style: Styles.textStyle14,
            ),
          ),
        ),
      ],
    );
  }
}
