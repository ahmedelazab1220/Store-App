import 'package:flutter/material.dart';
class CustomDivider extends StatelessWidget {
  const CustomDivider({super.key});

  @override
  Widget build(BuildContext context) {
    return Divider(
      height: 3,
      thickness: 1.5,
      color: Colors.deepPurple,
    );
  }
}
