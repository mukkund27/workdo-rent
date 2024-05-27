import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../components/app_constant.dart';
import '../../components/colors.dart';
import '../../components/images.dart';
import '../../components/string.dart';
import '../../widget/app_bar.dart';
import '../../widget/date_box_to.dart';
import 'managebooking.dart';

class MyBookingScreen extends StatelessWidget {
  const MyBookingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
          title: "My Booking",
        ),
      ),
      body:
          ListView.builder(
            itemCount: 3,
            itemBuilder: (context, index) {
            return   Padding(
              padding: EdgeInsets.symmetric(horizontal: width / 30),
              child: GestureDetector(
                onTap: (){
                  Get.to(const ManageBookingScreen());
                },
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
                          SizedBox(height: height / 60),
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
                              GestureDetector(
                                  onTap: () {},
                                  child: DateBox(AppText.datefrom)),
                              GestureDetector(
                                  onTap: () {},
                                  child: DateBox(AppText.dateto)),
                              GestureDetector(
                                onTap: () {},
                                child: Container(
                                  height: height / 15,
                                  width: width / 4.5,
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
                          SizedBox(height: height / 40),
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
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            );

          },),
    );
  }
}
