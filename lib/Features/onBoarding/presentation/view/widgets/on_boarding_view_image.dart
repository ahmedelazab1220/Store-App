import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:storeapp/Core/utils/hive.dart';
import 'package:storeapp/Core/utils/images.dart';
import 'package:storeapp/Core/utils/routers.dart';
import 'package:storeapp/Core/utils/styles.dart';
import 'package:storeapp/Core/utils/text.dart';

class OnBoardingViewImage extends StatelessWidget {
  const OnBoardingViewImage({
    super.key,
    required this.image,
    required this.skip,
  });

  final String image;
  final bool skip;

  @override
  Widget build(BuildContext context) {
    var screen = MediaQuery.of(context).size;
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        return Stack(
          children: [
            Container(
              height: screen.height * 0.55,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(AppImages.konboardingBackground),
                  fit: BoxFit.fill,
                ),
              ),
            ),
            Container(
              height: screen.height * 0.45,
              padding: EdgeInsets.only(
                left: screen.width * 0.05,
                top: screen.height * 0.05,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  skip
                      ? TextButton(
                          child: Text(
                            AppText.kSkip,
                            style: Styles.textStyle14,
                          ),
                          onPressed: () async {
                            await Hive.box(AppHive.tokenAndOnBoardingBox)
                                .put(AppHive.onBoarding, true);

                            if (context.mounted) {
                              GoRouter.of(context)
                                  .pushReplacement(AppRouter.kLoginScreen);
                            }
                          },
                        )
                      : const SizedBox(),
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.only(
                        right: screen.width * 0.15,
                        left: screen.width * 0.09,
                        bottom: screen.height * 0.03,
                      ),
                      child: FadeInDown(
                        child: AspectRatio(
                          aspectRatio: 4 / 2.5,
                          child: Image.asset(
                            image,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        );
      },
    );
  }
}
