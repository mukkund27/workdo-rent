import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:rentworkdo/components/images.dart';

import '../components/colors.dart';
import '../components/string.dart';
import '../config/approutes.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    final h=MediaQuery.of(context).size.height;
    final w=MediaQuery.of(context).size.width;
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
        body: Stack(
      children: [
        Image.asset(
          AppImage.homeScreenImage,
          fit: BoxFit.cover,height: h/1,
          width: w/1,
        ),
        Padding(
          padding: EdgeInsets.only(left: width / 15, top: height / 15, right: height / 12),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(AppText.houseNBooking, style: TextStyle(fontFamily: AppText.montserratBold, color: AppColors.whiteColor, fontSize: height / 20)),
              SizedBox(height: height / 12),
              Align(
                  alignment: Alignment.topRight,
                  child: Container(
                    height: height / 18,
                    width: width / 1.8,
                    decoration: BoxDecoration(color: AppColors.whiteColor, borderRadius: BorderRadius.circular(width / 15)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          AppText.woodenHouse,
                          style: TextStyle(
                            fontSize: width / 23,
                            fontFamily: AppText.montserratSemiBold,
                            color: AppColors.blackColor,
                          ),
                        ),
                        SizedBox(width: width / 50),
                        Icon(
                          Icons.star,
                          color: AppColors.greyColor,
                          size: width / 22,
                        ),
                        SizedBox(
                          width: width / 50,
                        ),
                        Text(
                          AppText.homeRate,
                          style: TextStyle(
                            fontSize: width / 24,
                            fontFamily: AppText.montserratSemiBold,
                            color: AppColors.greyColor,
                          ),
                        ),
                      ],
                    ),
                  )),
              SizedBox(height: height / 70),
              Align(
                  alignment: Alignment.topRight,
                  child: Container(
                    height: height / 18,
                    width: width / 2.8,
                    decoration: BoxDecoration(color: Colors.transparent, border: Border.all(color: AppColors.whiteColor), borderRadius: BorderRadius.circular(width / 15)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          AppIcon.doorIcon,
                          height: width / 18,
                        ),
                        SizedBox(width: width / 30),
                        Text(
                          AppText.sixRooms,
                          style: TextStyle(
                            fontSize: width / 22,
                            fontFamily: AppText.montserratSemiBold,
                            color: AppColors.whiteColor,
                          ),
                        ),
                      ],
                    ),
                  )),
              SizedBox(height: height / 70),
              Align(
                  alignment: Alignment.topRight,
                  child: Container(
                    height: height / 18,
                    width: width / 2.1,
                    decoration: BoxDecoration(color: Colors.transparent, border: Border.all(color: AppColors.whiteColor), borderRadius: BorderRadius.circular(width / 15)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          AppIcon.bathRoomIcon,
                          height: width / 15,
                        ),
                        SizedBox(width: width / 50),
                        Text(
                          AppText.twoBathrooms,
                          style: TextStyle(fontSize: width / 22, fontFamily: AppText.montserratSemiBold, color: AppColors.whiteColor, fontWeight: FontWeight.w600),
                        ),
                      ],
                    ),
                  )),
              SizedBox(height: height / 5.2),
              Text(
                AppText.welcomeTo,
                style: TextStyle(
                  fontSize: width / 15,
                  fontFamily: AppText.montserratMedium,
                  color: AppColors.whiteColor,
                ),
              ),
              Text(
                AppText.houseBooking,
                style: TextStyle(
                  fontSize: width / 12,
                  fontFamily: AppText.montserratBold,
                  color: AppColors.whiteColor,
                ),
              ),
              SizedBox(height: height / 180),
              Text(
                AppText.introText1,
                style: TextStyle(
                  fontSize: width / 28,
                  fontFamily: AppText.montserratMedium,
                  color: AppColors.introTextColor,
                ),
              ),
              Text(
                AppText.introText2,
                style: TextStyle(fontSize: width / 28, fontFamily: AppText.montserratMedium, color: AppColors.introTextColor, fontWeight: FontWeight.w400),
              ),
              SizedBox(height: height / 30),
              GestureDetector(
                onTap: () {
                  // Get.to(AppRoute.loginScreen);
                  // Get.offAllNamed(AppRoute.loginScreen);
                  Get.toNamed(AppRoute.loginScreen);
                },
                child: Container(
                  height: height / 18,
                  width: height / 5,
                  decoration: BoxDecoration(color: AppColors.whiteColor, borderRadius: BorderRadius.circular(width / 15)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        AppText.getStarted,
                        style: TextStyle(
                          fontSize: width / 26,
                          fontFamily: AppText.montserratSemiBold,
                          color: AppColors.blackColor,
                        ),
                      ),
                      SizedBox(
                        width: width / 50,
                      ),
                      Icon(
                        Icons.arrow_forward,
                        color: AppColors.blackColor,
                        size: width / 22,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    ));
  }
}
