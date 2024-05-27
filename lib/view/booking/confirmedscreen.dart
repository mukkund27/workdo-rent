import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rentworkdo/components/app_constant.dart';
import 'package:rentworkdo/components/colors.dart';
import 'package:rentworkdo/components/images.dart';
import 'package:rentworkdo/components/string.dart';
import 'package:rentworkdo/widget/app_bar.dart';
import '../../bottom_navigationbar.dart';

class ConfirmedScreen extends StatelessWidget {
  const ConfirmedScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
            trailingIcon: Icon(Icons.more_vert_sharp,color: AppColors.blackColor,)
        ),
      ),
      body: Column(
        children: [
          SizedBox(height: height/10),
          Center(child: Image.asset(AppImage.confirmed,height: height/2.5)),
          SizedBox(height: height/35),
          Text("Confirmed",style: TextStyle(fontFamily: AppText.montserratBold,fontSize: height/35),),
          SizedBox(height: height/100),
          Text("booking confirmation",style: TextStyle(fontFamily: AppText.montserratMedium,fontSize: height/70,color: AppColors.greyColor),),
          SizedBox(height: height/50),
          GestureDetector(
            onTap: () {
              Get.to(const BottomNavBar());
            },
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: width/15),
              child: Container(
                height: height / 14,
                decoration: BoxDecoration(
                    color: AppColors.blackColor,
                    borderRadius: BorderRadius.circular(width / 30)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Back to home",
                      style: TextStyle(
                          fontFamily: AppText.montserratSemiBold,
                          color: AppColors.whiteColor,
                          fontSize: width / 22),
                    ),
                    SizedBox(width: width / 32),
                    Image.asset(AppIcon.arrowRightSmall,
                        scale: height / 300)
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
