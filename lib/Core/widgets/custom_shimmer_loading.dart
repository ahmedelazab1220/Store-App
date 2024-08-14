import 'package:flutter/widgets.dart';
import 'package:storeapp/Core/utils/colors.dart';

class CustomShimmerLoading extends StatelessWidget {
  const CustomShimmerLoading(
      {super.key,
      this.width,
      this.height,
      this.redius,
      this.padding,
      this.margin,
      this.widget});

  final double? height;
  final double? width;
  final double? redius;
  final EdgeInsetsGeometry? padding;
  final EdgeInsetsGeometry? margin;
  final Widget? widget;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: padding,
      margin: margin,
      height: height,
      width: width,
      decoration: BoxDecoration(
        color: AppColors.black.withOpacity(0.3),
        borderRadius: BorderRadius.circular(
          redius ?? 20.0,
        ),
      ),
      child: widget,
    );
  }
}
