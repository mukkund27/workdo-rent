import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../components/app_constant.dart';
import '../components/colors.dart';
import '../components/images.dart';
import '../components/string.dart';

class ShowMorePlacesButton extends StatelessWidget {
  final Color? boxColor;
  final Gradient? boxGradient;
  final void Function()? onTap;

  const ShowMorePlacesButton(
      {super.key, this.boxColor, this.boxGradient, this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: height / 14,
        decoration: BoxDecoration(
            color: boxColor,
            gradient: boxGradient,
            borderRadius: BorderRadius.circular(width / 30)),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(width: width / 15),
            Text(
              AppText.showMorePlace,
              style: TextStyle(
                  fontFamily: AppText.montserratSemiBold,
                  color: AppColors.whiteColor,
                  fontSize: Get.width / 25),
            ),
            SizedBox(width: width / 32),
            Image.asset(AppIcon.arrowRightSmall, scale: height / 200)
          ],
        ),
      ),
    );
  }
}
