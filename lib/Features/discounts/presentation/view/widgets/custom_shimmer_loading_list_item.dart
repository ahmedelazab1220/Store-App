import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';
import 'package:storeapp/Core/utils/colors.dart';
import 'package:storeapp/Core/widgets/custom_shimmer_loading.dart';

class CustomShimmerLoadingListItem extends StatelessWidget {
  const CustomShimmerLoadingListItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: Colors.grey[400]!,
      highlightColor: Colors.grey[100]!,
      child: Stack(
        children: [
          CustomShimmerLoading(
            margin: const EdgeInsets.symmetric(
              horizontal: 10,
              vertical: 10,
            ),
            padding: const EdgeInsets.only(
              top: 16,
              bottom: 30,
              left: 48,
              right: 20,
            ),
            redius: 20.0,
            height: MediaQuery.of(context).size.aspectRatio * 360,
            width: MediaQuery.of(context).size.width,
            widget: const Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 30.0),
                  child: AspectRatio(
                    aspectRatio: 4 / 5,
                    child: CustomShimmerLoading(
                      redius: 20,
                    ),
                  ),
                ),
                SizedBox(width: 45),
                Flexible(
                  flex: 9,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Expanded(
                        flex: 3,
                        child: CustomShimmerLoading(
                          redius: 10,
                        ),
                      ),
                      SizedBox(height: 8),
                      Expanded(
                        flex: 3,
                        child: CustomShimmerLoading(
                          redius: 10,
                        ),
                      ),
                      SizedBox(height: 3),
                      Expanded(
                        flex: 2,
                        child: CustomShimmerLoading(
                          width: 90,
                          redius: 10,
                        ),
                      ),
                      SizedBox(height: 10),
                      Row(
                        textDirection: TextDirection.rtl,
                        children: [
                          CustomShimmerLoading(
                            width: 75,
                            height: 25,
                            redius: 10,
                          ),
                          CustomShimmerLoading(
                            width: 50,
                            height: 25,
                            redius: 10,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            left: 10,
            top: 11,
            child: Container(
              padding: const EdgeInsets.all(10),
              height: 25,
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(35),
                  topRight: Radius.circular(0),
                  bottomLeft: Radius.circular(10),
                  bottomRight: Radius.circular(20),
                ),
                color: AppColors.black.withOpacity(0.3),
              ),
              child: const SizedBox(
                width: 50,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
