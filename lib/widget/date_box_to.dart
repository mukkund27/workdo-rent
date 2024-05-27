import 'package:flutter/material.dart';
import 'package:rentworkdo/components/colors.dart';
import 'package:rentworkdo/components/string.dart';

import '../components/app_constant.dart';

class DateBox extends StatelessWidget {
  const DateBox(this.text, {super.key});

  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height / 15,
      width: width / 3.5,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(width / 50),
        border: Border.all(color: AppColors.boxBorder),
      ),
      child: Center(
          child: Text(
        text,
        style: TextStyle(
            fontSize: width / 28, fontFamily: AppText.montserratSemiBold),
      )),
    );
  }
}
