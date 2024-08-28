import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';
import 'package:storeapp/Core/utils/colors.dart';
import 'package:storeapp/Core/utils/routers.dart';
import 'package:storeapp/Core/utils/text.dart';
import 'package:storeapp/Core/widgets/custom_button.dart';
import 'package:storeapp/Features/profile/presentation/view/widgets/alert_dialog_confirm_logout.dart';
import 'package:storeapp/Features/profile/presentation/view/widgets/profile_body_email_and_name.dart';
import 'package:storeapp/Features/profile/presentation/view/widgets/profile_body_image.dart';
import 'package:storeapp/Features/profile/presentation/view/widgets/profile_body_options_list_tile.dart';

class ProfileBody extends StatelessWidget {
  const ProfileBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        margin: const EdgeInsets.only(
          top: 40.0,
        ),
        padding: const EdgeInsets.all(15.0),
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Column(
          children: [
            const ProfileBodyImage(),
            const SizedBox(
              height: 10,
            ),
            const ProfileBodyEmailAndName(),
            const SizedBox(
              height: 20,
            ),
            CustomButton(
              textButton: AppText.kEditProfile,
              onPressed: () {
                GoRouter.of(context).push(AppRouter.kEditProfileScreen);
              },
            ),
            const SizedBox(
              height: 30,
            ),
            const SizedBox(
              height: 15,
            ),
            ProfileBodyOptionsListTile(
              startIcon: true,
              title: AppText.kSettings,
              icon: LineAwesomeIcons.cog_solid,
              onTap: () {},
            ),
            ProfileBodyOptionsListTile(
              startIcon: true,
              title: AppText.kBillingDetails,
              icon: LineAwesomeIcons.wallet_solid,
              onTap: () {},
            ),
            ProfileBodyOptionsListTile(
              startIcon: true,
              title: AppText.kUserManagement,
              icon: LineAwesomeIcons.user_check_solid,
              onTap: () {},
            ),
            const SizedBox(
              height: 35,
            ),
            ProfileBodyOptionsListTile(
              startIcon: true,
              title: AppText.kInformation,
              icon: LineAwesomeIcons.info_solid,
              onTap: () {},
            ),
            ProfileBodyOptionsListTile(
              startIcon: false,
              title: AppText.kLogOut,
              textColor: AppColors.red,
              icon: LineAwesomeIcons.sign_out_alt_solid,
              onTap: () {
                showDialog(
                  context: context,
                  builder: (c) {
                    return const AlertDialogConfirmLogout();
                  },
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
