import 'package:flutter/widgets.dart';
import 'package:storeapp/Features/discounts/presentation/view/widgets/custom_shimmer_loading_list_item.dart';

class CustomShimmerLoadingList extends StatelessWidget {
  const CustomShimmerLoadingList({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverPadding(
      padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 15),
      sliver: SliverList(
        delegate: SliverChildBuilderDelegate(
          (context, index) {
            return const CustomShimmerLoadingListItem();
          },
          childCount: 6,
        ),
      ),
    );
  }
}
