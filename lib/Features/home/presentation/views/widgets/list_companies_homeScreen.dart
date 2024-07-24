import 'package:flutter/material.dart';
import 'package:storeapp/Features/home/data/company_list.dart';

import 'body_itembuilder_company_list.dart';

class ListCompaniesHomScreen extends StatelessWidget {
  const ListCompaniesHomScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return    SizedBox(
      height: MediaQuery.of(context).size.height*0.135,
      child: Padding(
        padding: const EdgeInsets.only(left: 10),
        child: ListView.separated(
          scrollDirection: Axis.horizontal,
          itemBuilder: (BuildContext context, int index) {
            return BodyItemBuilderCompanyList(
              companyModel: companyList[index],);
          },
          separatorBuilder: (BuildContext context, int index) =>const SizedBox(width: 10,),
          itemCount: companyList.length,
        ),
      ),
    );
  }
}
