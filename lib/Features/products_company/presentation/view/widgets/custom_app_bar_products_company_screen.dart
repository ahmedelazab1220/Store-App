import 'package:flutter/material.dart';
import 'package:storeapp/Core/shared_widget/custom_field.dart';
import '../../../../../Core/utils/colors.dart';
import '../../../../../Core/utils/styles.dart';

class CustomAppBarProductsCompanyScreen extends StatelessWidget {
  const CustomAppBarProductsCompanyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.only(bottom: 22),
      child: Container(
          padding:  const EdgeInsets.only(top:45,bottom: 16),
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
                  const Spacer(),
                  const Stack(
                    alignment: Alignment.center,
                    children: [
                      CircleAvatar(
                        radius: 25,
                        backgroundColor: AppColors.white,
                      ),
                      Image(image: AssetImage("assets/images/chiosy_product_scr_appbar.png"),
                        height: 50,
                        width: 50,
                      ),
                    ],
                  ),
                  const SizedBox(
                    width: 12,
                  ),
                  Text(
                    "شيبسي",
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
              const SizedBox(height: 30,),
              const CustomField(hintText:  "ابحث عن منتجات شيبسي"),
            ],
          )
      ),
    );
  }
}
