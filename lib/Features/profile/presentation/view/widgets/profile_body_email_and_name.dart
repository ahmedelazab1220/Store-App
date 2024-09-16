import 'package:flutter/widgets.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:storeapp/Core/utils/colors.dart';
import 'package:storeapp/Core/utils/hive.dart';
import 'package:storeapp/Core/utils/styles.dart';

class ProfileBodyEmailAndName extends StatelessWidget {
  const ProfileBodyEmailAndName({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: Hive.box(AppHive.userBox).listenable(),
      builder: (context, value, child) {
        return Column(
          children: [
            Hive.box(AppHive.userBox).get(AppHive.userName) != null
                ? Text(
                    Hive.box(AppHive.userBox).get(AppHive.userName),
                    style: Styles.textStyle16.copyWith(
                      color: AppColors.kTransparent,
                      fontStyle: FontStyle.italic,
                    ),
                  )
                : const SizedBox(),
            const SizedBox(
              height: 3,
            ),
            Text(
              Hive.box(AppHive.userBox).get(AppHive.userEmail),
              style: Styles.textStyle16.copyWith(
                color: AppColors.kTransparent,
                fontStyle: FontStyle.italic,
              ),
            ),
          ],
        );
      },
    );
  }
}
