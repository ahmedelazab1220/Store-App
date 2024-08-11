import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:storeapp/Core/utils/colors.dart';
import 'package:storeapp/Core/utils/toast.dart';
import 'package:storeapp/Features/home/data/models/category_model.dart';
import 'package:storeapp/Features/home/presentation/view/widgets/category_view_container.dart';
import 'package:storeapp/Features/home/presentation/view_model/home_cubit/home_cubit.dart';

class CategoryListViewContainer extends StatefulWidget {
  const CategoryListViewContainer({super.key});

  @override
  State<CategoryListViewContainer> createState() =>
      _CategoryListViewContainerState();
}

class _CategoryListViewContainerState extends State<CategoryListViewContainer> {
  List<CategoryModel> categories = [];

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<HomeCubit, HomeState>(
      listener: (context, state) {
        if (state is CategoriesFailureState) {
          showToast(title: state.message, color: AppColors.red);
        } else if (state is CategoriesSuccessState) {
          categories = state.categories;
        }
      },
      builder: (context, state) {
        return SliverPadding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 22),
          sliver: SliverGrid(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 24,
              mainAxisSpacing: 24,
              childAspectRatio: 1.1,
            ),
            delegate: SliverChildBuilderDelegate(
              (context, index) {
                return CategoryViewContainer(
                  categoryModel: categories[index],
                );
              },
              childCount: categories.length,
            ),
          ),
        );
      },
    );
  }
}
