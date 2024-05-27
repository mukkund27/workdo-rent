import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rentworkdo/view/home/appoinment_step_screen.dart';

import '../../components/app_constant.dart';
import '../../components/colors.dart';
import '../../components/images.dart';
import '../../components/string.dart';
import '../../controller/step_controller.dart';
import '../../widget/app_bar.dart';
import '../../widget/bottom_date_picker.dart';
import '../../widget/bottom_guest_select.dart';
import '../../widget/date_box_to.dart';
import '../../widget/guest_box.dart';


class ReservationScreen extends StatelessWidget {
   ReservationScreen({Key? key}) : super(key: key);
  final appoinmentController = Get.put(AppoinmentController());
  final selectedStep = 0;
  @override
  Widget build(BuildContext context) {
    // var arg = ModalRoute.of(context)?.settings.arguments;
    return Scaffold(
      backgroundColor: AppColors.whiteColor,
      appBar:  PreferredSize(
        preferredSize: Get.size / 10,
        child: Appbar(
          onTapLeading: () {
            Get.back();
          },
          isLeading: true,
          leadingIcon: Image.asset(
            AppIcon.arrowLeftSmall,
            scale: width / 400,
          ),
          title: "Reservation",
          isTrailing: true,
          trailingIcon: Image.asset(
            AppIcon.moreVertical,
            scale: width / 300,
            color: AppColors.blackColor,
          ),
        ),
      ),
      body: Scaffold(
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: width / 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
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
                  ],
                ),
              ),
              SizedBox(height: height / 80),
              Text(
                "Book your stay",
                style: TextStyle(
                    fontSize: width / 20,
                    fontFamily: AppText.montserratSemiBold,
                    color: AppColors.blackColor),
              ),
              SizedBox(height: height / 50),
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
              SizedBox(
                height: height / 50,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                      onTap: () {
                        Get.bottomSheet(
                            BottomDatePicker(),
                        );
                      },
                      child: DateBox(AppText.datefrom)),
                  GestureDetector(
                      onTap: () {
                        Get.bottomSheet(
                          BottomDatePicker(),
                        );
                      },
                      child: DateBox(AppText.dateto)),
                  GestureDetector(
                    onTap: () {
                      Get.bottomSheet(SelectGuest());
                    },
                    child: const GuestBox(),
                  )
                ],
              ),
              SizedBox(height: height / 40),
              Container(
                padding: EdgeInsets.symmetric(
                    horizontal: width / 20, vertical: height / 70),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(width / 50),
                    color: AppColors.blackColor),
                child: Row(
                  children: [
                    Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Total Price:",
                            style: TextStyle(
                                fontSize: width / 27,
                                fontFamily: AppText.montserratBold,
                                color: AppColors.whiteColor),
                          ),
                          Text(
                            "Tax included",
                            style: TextStyle(
                                fontSize: width / 27,
                                fontFamily: AppText.montserratMedium,
                                color: AppColors.whiteColor),
                          ),
                        ]),
                    const Spacer(),
                    Text(
                      "\$530",
                      style: TextStyle(
                          fontSize: width / 20,
                          fontFamily: AppText.montserratBold,
                          color: AppColors.whiteColor),
                    ),
                  ],
                ),
              ),
              SizedBox(height: height / 40),
              GestureDetector(
                onTap: () {
                  appoinmentController.stepperCounter.value =0;
                  Get.to(AppoinmentStepScreen());
                },
                child: Container(
                  padding: EdgeInsets.symmetric(
                      horizontal: width / 15, vertical: height / 100),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(width / 50),
                      color: AppColors.blackColor),
                  child: Row(
                    children: [
                      Text(
                        "Make Reservation",
                        style: TextStyle(
                            fontSize: width / 25,
                            fontFamily: AppText.montserratBold,
                            color: AppColors.whiteColor),
                      ),
                      SizedBox(
                        width: width / 100,
                      ),
                      Image.asset(
                        AppIcon.arrowRightSmall,
                        color: AppColors.whiteColor,
                        height: width / 10,
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      )
    );
  }
}
