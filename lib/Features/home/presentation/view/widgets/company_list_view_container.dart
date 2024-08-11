import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:storeapp/Core/utils/colors.dart';
import 'package:storeapp/Core/utils/toast.dart';
import 'package:storeapp/Features/home/data/models/company_model.dart';
import 'package:storeapp/Features/home/presentation/view/widgets/company_view_container.dart';
import 'package:storeapp/Features/home/presentation/view_model/home_cubit/home_cubit.dart';

class CompanyListViewContainer extends StatefulWidget {
  const CompanyListViewContainer({super.key});

  @override
  State<CompanyListViewContainer> createState() =>
      _CompanyListViewContainerState();
}

class _CompanyListViewContainerState extends State<CompanyListViewContainer> {
  List<CompanyModel> companiesList = [];

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<HomeCubit, HomeState>(
      listener: (context, state) {
        if (state is CompaniesFailureState) {
          showToast(title: state.message, color: AppColors.red);
        } else if (state is CompaniesSuccessState) {
          companiesList = state.companies;
        }
      },
      builder: (context, state) {
        return Directionality(
          textDirection: TextDirection.rtl,
          child: SizedBox(
            height: 120,
            child: Padding(
              padding: const EdgeInsets.only(
                right: 15.0,
                top: 12,
              ),
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                physics: const BouncingScrollPhysics(),
                itemBuilder: (BuildContext context, int index) {
                  return CompanyViewContainer(
                    companyModel: companiesList[index],
                  );
                },
                separatorBuilder: (BuildContext context, int index) =>
                    const SizedBox(
                  width: 10,
                ),
                itemCount: companiesList.length,
              ),
            ),
          ),
        );
      },
    );
  }
}
