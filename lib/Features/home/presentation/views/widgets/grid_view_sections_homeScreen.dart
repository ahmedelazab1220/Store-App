import 'package:flutter/material.dart';
import 'package:storeapp/Features/home/data/sections_list.dart';
import 'body_itemBuilder_gridview_sections.dart';

class GridViewSectionsHomeScreen extends StatelessWidget {
  const GridViewSectionsHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverPadding(
      padding: const EdgeInsets.symmetric(horizontal: 12),
      sliver: SliverGrid(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2, // Number of items per row
          crossAxisSpacing: 24,
          mainAxisSpacing: 20, // Spacing between items horizontally
          childAspectRatio: 1.1, // Aspect ratio of items (square in this case)
        ),
        delegate: SliverChildBuilderDelegate(
              (context, index) {
            return BodyItemBuilderGridviewSections(
              sectionsModel: sectionsList[index],
            );
          },
          childCount: sectionsList.length,
        ),
      ),
    );
  }
}
