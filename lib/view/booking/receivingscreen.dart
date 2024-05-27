import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rentworkdo/components/app_constant.dart';
import 'package:rentworkdo/components/colors.dart';
import 'package:rentworkdo/components/images.dart';
import 'package:rentworkdo/components/string.dart';
import 'package:rentworkdo/config/approutes.dart';
import 'package:rentworkdo/widget/app_bar.dart';

import 'confirmedscreen.dart';

class ReceivingScreen extends StatelessWidget {
  const ReceivingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Timer(const Duration(seconds: 3), () {
      Get.to(const ConfirmedScreen());
    });

    return Scaffold(backgroundColor: AppColors.whiteColor,
      appBar: PreferredSize(
        preferredSize: Get.size / 10,
        child: Appbar(onTapTrailing: () {

        },
          isLeading: true,
          onTapLeading: () {

          },
          leadingIcon: Image.asset(
            AppIcon.arrowLeftSmall,
            height: height/100,
          ),
          isTrailing: true,
          trailingIcon: GestureDetector(
              onTap: () {
                Get.toNamed(AppRoute.filtersScreen);
              },
              child: Icon(Icons.more_vert_sharp,color: AppColors.blackColor,))
        ),
      ),
      body: Column(
        children: [
          SizedBox(height: height/10),
          Center(child: Image.asset(AppImage.receiving,height: height/2.5)),
          SizedBox(height: height/35),
          Text("Receiving",style: TextStyle(fontFamily: AppText.montserratBold,fontSize: height/35),),
          SizedBox(height: height/100),
          Text("the property’s confirmation",style: TextStyle(fontFamily: AppText.montserratMedium,fontSize: height/70,color: AppColors.greyColor),),
        ],
      ),
    );
  }
}
