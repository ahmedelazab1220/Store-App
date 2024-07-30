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
          padding: const EdgeInsets.only(top: 30,bottom: 22),
          width: double.infinity,
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
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 35),
                      child: Text(
                        "المشروبات",
                        textAlign: TextAlign.center,
                        style: Styles.textStyle36,
                      ),
                    ),
                  ),
                  IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: const Icon(
                        Icons.arrow_forward_ios,
                        color: AppColors.white,
                      )),
                
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
