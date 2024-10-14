import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:storeapp/Core/utils/colors.dart';
import 'package:storeapp/Core/utils/hive.dart';
import 'package:storeapp/Core/utils/routers.dart';
import 'package:storeapp/Core/utils/styles.dart';

class AlertDialogConfirmLogout extends StatelessWidget {
  const AlertDialogConfirmLogout({super.key});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      elevation: 0.5,
      backgroundColor: AppColors.white,
      title: Center(
        child: Text(
          "هل متأكد من تسجيل الخروج؟",
          style: Styles.textStyle16,
        ),
      ),
      content: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          MaterialButton(
            color: AppColors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
              side: const BorderSide(
                color: AppColors.kPrimaryColor,
              ),
            ),
            onPressed: () {
              context.pop();
            },
            child: Text(
              "الغاء",
              style: Styles.textStyle14.copyWith(
                color: AppColors.black,
              ),
            ),
          ),
          MaterialButton(
            color: AppColors.red,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
              side: const BorderSide(
                color: AppColors.kPrimaryColor,
              ),
            ),
            onPressed: () {
              Hive.deleteBoxFromDisk(AppHive.userBox);
              AppHive.removeRefreshToken();
              AppHive.removeAccessToken().then((value) {
                GoRouter.of(context).go(
                  AppRouter.kLoginScreen,
                );
              });
            },
            child: Text(
              "تأكيد",
              style: Styles.textStyle14.copyWith(
                color: AppColors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
