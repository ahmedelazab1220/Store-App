import 'package:flutter/widgets.dart';
import 'package:storeapp/Core/utils/colors.dart';
import 'package:storeapp/Features/auth/presentation/view/widgets/login/login_view_container_body.dart';

class LoginViewContainer extends StatelessWidget {
  const LoginViewContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        top: MediaQuery.of(context).size.height * 0.005,
      ),
      padding: const EdgeInsets.only(
        right: 30.0,
        top: 60.0,
        left: 30.0,
      ),
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(50.0),
          topRight: Radius.circular(50.0),
        ),
        color: AppColors.white,
      ),
      child: const LoginViewContainerBody(),
    );
  }
}
