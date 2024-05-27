import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rentworkdo/config/approutes.dart';

import '../components/app_constant.dart';
import '../components/colors.dart';
import '../components/images.dart';
import '../components/string.dart';

class CommonFeaturePlace extends StatelessWidget {
  final List<Map<String, dynamic>> featureplaceList = [
    {
      "Image": AppImage.searchPlace1,
    },
    {
      "Image": AppImage.searchPlace2,
    },
  ];

  CommonFeaturePlace({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: List.generate(
          2,
          (index) => GestureDetector(
                onTap: () {
                  Get.toNamed(AppRoute.splaceDetailScreen);
                },
                child: Container(
                  height: height / 2.9,
                  padding: EdgeInsets.all(height / 100),
                  margin: EdgeInsets.symmetric(vertical: height / 60),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(width / 30),
                      border: Border.all(color: AppColors.boxBorder)),
                  child: Column(
                    children: [
                      Stack(
                        clipBehavior: Clip.none,
                        children: [
                          Image.asset(
                            featureplaceList[index]["Image"],
                            height: height / 5,
                            width: double.infinity,
                            fit: BoxFit.fill,
                          ),
                          Positioned(
                              top: height / 100,
                              left: height / 100,
                              child: Container(
                                height: height / 30,
                                width: width / 7.5,
                                decoration: BoxDecoration(
                                    color: AppColors.blackColor,
                                    borderRadius:
                                        BorderRadius.circular(width / 100)),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(
                                      Icons.star,
                                      color: AppColors.ratingStar,
                                      size: width / 22,
                                    ),
                                    Text(
                                      AppText.rate,
                                      style: TextStyle(
                                          fontFamily: AppText.montserratMedium,
                                          fontSize: width / 27,
                                          color: AppColors.whiteColor),
                                    )
                                  ],
                                ),
                              ))
                        ],
                      ),
                      SizedBox(
                        height: height / 80,
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Modern House",
                                style: TextStyle(
                                    fontSize: width / 24,
                                    fontFamily: AppText.montserratSemiBold,
                                    color: AppColors.blackColor),
                              ),
                              Text(
                                "Gualala, CA 9442",
                                style: TextStyle(
                                    fontSize: width / 30,
                                    fontFamily: AppText.montserratMedium,
                                    color: AppColors.featuredPlaceSubtitle),
                              ),
                            ],
                          ),
                          const Spacer(),
                          Text(
                            "\$520",
                            style: TextStyle(
                                fontFamily: AppText.montserratSemiBold,
                                color: AppColors.blackColor,
                                fontSize: width / 18),
                          ),
                          Text(
                            "/night",
                            style: TextStyle(
                                fontFamily: AppText.montserratSemiBold,
                                color: AppColors.featuredPlaceSubtitle,
                                fontSize: width / 28),
                          ),
                        ],
                      ),
                      Divider(
                        color: AppColors.dividerColor,
                        thickness: width / 250,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          const Spacer(),
                          Image.asset(
                            AppIcon.featureBed,
                            scale: width / 450,
                            color: AppColors.blackColor,
                          ),
                          SizedBox(
                            width: width / 60,
                          ),
                          Text(
                            "5",
                            style: TextStyle(
                                fontFamily: AppText.montserratSemiBold,
                                color: AppColors.blackColor,
                                fontSize: width / 24),
                          ),
                          const Spacer(),
                          Image.asset(
                            AppIcon.bathtub,
                            scale: width / 450,
                            color: AppColors.blackColor,
                          ),
                          SizedBox(
                            width: width / 60,
                          ),
                          Text(
                            "2",
                            style: TextStyle(
                                fontFamily: AppText.montserratSemiBold,
                                color: AppColors.blackColor,
                                fontSize: width / 24),
                          ),
                          const Spacer(),
                          Image.asset(
                            AppIcon.users,
                            scale: width / 400,
                            color: AppColors.blackColor,
                          ),
                          SizedBox(
                            width: width / 60,
                          ),
                          Text(
                            "Up to 6",
                            style: TextStyle(
                                fontFamily: AppText.montserratSemiBold,
                                color: AppColors.blackColor,
                                fontSize: width / 24),
                          ),
                          const Spacer(),
                          Image.asset(
                            AppIcon.rentRoom,
                            scale: width / 300,
                            color: AppColors.blackColor,
                          ),
                          SizedBox(
                            width: width / 60,
                          ),
                          Text(
                            "3,800 sqft",
                            style: TextStyle(
                                fontFamily: AppText.montserratSemiBold,
                                color: AppColors.blackColor,
                                fontSize: width / 24),
                          ),
                          const Spacer(),
                        ],
                      )
                    ],
                  ),
                ),
              )),
    );
  }
}
