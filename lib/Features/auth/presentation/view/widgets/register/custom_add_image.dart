import 'dart:io';

import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:image_picker/image_picker.dart';
import 'package:storeapp/Core/utils/colors.dart';
import 'package:storeapp/Core/utils/images.dart';
import 'package:storeapp/Core/utils/loggers.dart';
import 'package:storeapp/Core/utils/text.dart';
import 'package:storeapp/Features/auth/presentation/view/widgets/custom_title_form_field.dart';
import 'package:storeapp/Features/auth/presentation/view_model/register_cubit/register_cubit.dart';

class CustomAddImage extends StatefulWidget {
  const CustomAddImage({super.key});

  @override
  State<CustomAddImage> createState() => _CustomAddImageState();
}

class _CustomAddImageState extends State<CustomAddImage> {
  late File myFile;

  @override
  Widget build(BuildContext context) {
    var cubit = BlocProvider.of<RegisterCubit>(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const CustomTitleFormField(
          image: AppImages.kCopyIdCard,
          title: AppText.kCopyIDCard,
          mainAxisAlignment: MainAxisAlignment.center,
        ),
        const SizedBox(
          height: 7,
        ),
        GestureDetector(
          onTap: () async {
            final ImagePicker picker = ImagePicker();
            final XFile? image =
                await picker.pickImage(source: ImageSource.camera);

            myFile = File(image!.path);
            AppLogger.print("message: ${myFile.path}");
            cubit.myFile = myFile;
            setState(() {});
          },
          child: Container(
            width: 170,
            height: 90,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              border: Border.all(
                color: AppColors.kTextField,
              ),
            ),
            child: cubit.myFile != null
                ? Image.file(
                    cubit.myFile!,
                    width: 500,
                  )
                : Center(
                    child: SvgPicture.asset(
                      AppImages.kAddPhotoIcon,
                      width: 50,
                      height: 50,
                    ),
                  ),
          ),
        ),
      ],
    );
  }
}
