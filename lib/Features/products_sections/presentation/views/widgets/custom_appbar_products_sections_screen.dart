import 'package:flutter/material.dart';

import '../../../../../Core/shared_widget/custom_field.dart';
import '../../../../../Core/utils/colors.dart';
import '../../../../../Core/utils/styles.dart';

class  CustomAppbarProductsSectionsScreen extends StatelessWidget {
  const  CustomAppbarProductsSectionsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 22),
      child: Container(
          padding: const EdgeInsets.only(top: 60),
          width: double.infinity,
          height: MediaQuery.of(context).size.height * 0.27,
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(0),
              topRight: Radius.circular(0),
              bottomLeft: Radius.circular(25),
              bottomRight: Radius.circular(25),
            ),
            gradient: LinearGradient(
              colors: [
                AppColors.purpleIrisColor,
                AppColors.ceruleanBlueColor,
              ],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
          ),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Spacer(),
                  Text(
                    "المشروبات",
                    style: Styles.textStyle36,
                  ),
                  const Spacer(),
                  IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: const Icon(
                        Icons.arrow_forward_ios,
                        color: AppColors.white,
                      )),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.05,
                  ),
                ],
              ),
              const SizedBox(
                height: 16,
              ),
              const CustomField(hintText: "ابحث عن مشروبك المفضل"),
            ],
          )),
    );
  }
}
