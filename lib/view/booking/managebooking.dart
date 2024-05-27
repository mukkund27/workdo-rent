import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rentworkdo/components/app_constant.dart';
import 'package:rentworkdo/components/colors.dart';
import 'package:rentworkdo/components/images.dart';
import 'package:rentworkdo/components/string.dart';
import 'package:rentworkdo/widget/app_bar.dart';
import 'package:rentworkdo/widget/date_box_to.dart';

import 'changeofplans.dart';

class ManageBookingScreen extends StatelessWidget {
  const ManageBookingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.whiteColor,
      appBar: PreferredSize(
        preferredSize: Get.size / 10,
        child: Appbar(
          onTapTrailing: () {},
          isLeading: true,
          onTapLeading: () {
            Get.back();
          },
          leadingIcon: Image.asset(
            AppIcon.arrowLeftSmall,
            height: height / 100,
          ),
          title: "Manage Booking",
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: width / 30),
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(height / 80),
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
                        AppImage.searchPlace1,
                        height: height / 5,
                        width: double.infinity,
                        fit: BoxFit.fill,
                      ),
                      Positioned(
                          top: height / 100,
                          left: height / 100,
                          child: Container(
                            height: height / 30,
                            width: width / 7.7,
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
                  SizedBox(height: height / 80),
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
                ],
              ),
            ),
            SizedBox(height: height / 80),
            Row(
              children: [
                Text(
                  AppText.dates,
                  style: TextStyle(
                      fontSize: width / 25,
                      fontFamily: AppText.montserratSemiBold,
                      color: AppColors.blackColor),
                ),
                const Spacer(),
                Text(
                  AppText.guests,
                  style: TextStyle(
                      fontSize: width / 25,
                      fontFamily: AppText.montserratSemiBold,
                      color: AppColors.blackColor),
                ),
                SizedBox(
                  width: width / 11,
                )
              ],
            ),
            SizedBox(height: height / 60),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(onTap: () {}, child: DateBox(AppText.datefrom)),
                GestureDetector(onTap: () {}, child: DateBox(AppText.dateto)),
                GestureDetector(
                  onTap: () {},
                  child: Container(
                    height: height / 15,
                    width: width / 4.2,
                    padding: EdgeInsets.symmetric(
                      horizontal: width / 30,
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(width / 50),
                      border: Border.all(color: AppColors.boxBorder),
                    ),
                    child: Row(
                      children: [
                        Text(
                          "2",
                          style: TextStyle(
                              fontSize: width / 17,
                              fontFamily: AppText.montserratSemiBold),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
            SizedBox(height: height / 30),
            Container(
              height: height / 15,
              decoration: BoxDecoration(
                  color: AppColors.blackColor,
                  borderRadius: BorderRadius.circular(8)),
              child: Row(
                children: [
                  SizedBox(width: width / 22),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Total Price:",
                        style: TextStyle(
                            color: AppColors.whiteColor,
                            fontFamily: AppText.montserratBold,
                            fontSize: height / 80),
                      ),
                      SizedBox(height: height / 300),
                      Text(
                        "Tax included",
                        style: TextStyle(
                            color: AppColors.whiteColor,
                            fontFamily: AppText.montserratMedium,
                            fontSize: height / 75),
                      ),
                    ],
                  ),
                  const Spacer(),
                  Text(
                    "\$530",
                    style: TextStyle(
                        color: AppColors.whiteColor,
                        fontFamily: AppText.montserratBold,
                        fontSize: height / 50),
                  ),
                  SizedBox(width: width / 22),
                ],
              ),
            ),
            SizedBox(height: height / 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: () {
                    Get.back();
                  },
                  child: Container(
                      height: height / 15,
                      width: width / 1.9,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        border: Border.all(color: AppColors.blackColor),
                      ),
                      child: Center(
                          child: Text(
                        "Back to bookings",
                        style: TextStyle(
                            color: AppColors.blackColor,
                            fontFamily: AppText.montserratBold,
                            fontSize: height / 65),
                      ))),
                ),

                GestureDetector(
                  onTap: (){
                    Get.to(ChangeOfPlans());
                  },
                  child: Container(
                    height: height / 15,
                    width: width / 2.8,
                    decoration: BoxDecoration(
                        color: AppColors.blackColor,
                        borderRadius: BorderRadius.circular(8)),
                    child: Center(
                      child: Text(
                        "Cancel",
                        style: TextStyle(
                            color: AppColors.whiteColor,
                            fontSize: height / 60,
                            fontFamily: AppText.montserratSemiBold),
                      ),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
