import 'package:flutter/material.dart';
import 'package:storeapp/Features/home/presentation/view_model/company_model.dart';

import '../../../../../Core/utils/colors.dart';
import '../../../../../Core/utils/styles.dart';

class BodyItemBuilderCompanyList extends StatelessWidget {
  const BodyItemBuilderCompanyList({super.key, required this.companyModel});
  final CompanyModel companyModel;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
         CircleAvatar(
            radius: 35,
            backgroundColor: AppColors.magnoliaColor,
            child: Image(image: AssetImage(companyModel.image),)
        ),
        const SizedBox(height: 2,),
        Text(companyModel.title,
          style:  Styles.textStyle34,
        )
      ],
    );
  }
}
