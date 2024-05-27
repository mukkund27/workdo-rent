import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../components/colors.dart';
import '../components/string.dart';

class CommonAppBar extends StatelessWidget {
  const CommonAppBar(this.text1, this.text2, {super.key});

  final String text1;
  final String text2;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        height: Get.height / 8,
        padding: EdgeInsets.symmetric(horizontal: Get.width / 30, vertical: 0),
        width: double.infinity,
        child: Row(
          children: [
            Text(
              text1,
              style: TextStyle(
                fontSize: Get.width / 15,
                fontFamily: AppText.montserratBold,
                color: AppColors.blackColor,
              ),
            ),
            SizedBox(
              width: Get.width / 100,
            ),
            Text(
              text2,
              style: TextStyle(
                fontSize: Get.width / 15,
                fontFamily: AppText.montserratMedium,
                color: AppColors.blackColor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
