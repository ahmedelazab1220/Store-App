import 'package:flutter/material.dart';
import 'package:storeapp/Features/home/presentation/view_model/sections_model.dart';
import '../../../../../Core/utils/colors.dart';
import '../../../../../Core/utils/styles.dart';

class BodyItemBuilderGridviewSections extends StatelessWidget {
  const BodyItemBuilderGridviewSections({super.key, required this.sectionsModel});
  final  SectionsModel sectionsModel;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: AppColors.porcelainColor
      ),
      child:  Column(
        children: [
          Image(image: AssetImage(sectionsModel.images),
            width: 120,
            height: 100,
          ),
          Text(sectionsModel.title,
          textAlign: TextAlign.center,
          style: Styles.textStyle35,
          ),
        ],
      ),
    );
  }
}
