import 'package:flutter/widgets.dart';
import 'package:storeapp/Core/utils/colors.dart';
import 'package:storeapp/Features/auth/presentation/view/widgets/register/register_view_container_body.dart';

class RegisterViewContainer extends StatelessWidget {
  const RegisterViewContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        top: MediaQuery.of(context).size.height * 0.01,
      ),
      padding: const EdgeInsets.only(
        right: 30.0,
        top: 40.0,
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
      child: const RegisterViewContainerBody(),
    );
  }
}
