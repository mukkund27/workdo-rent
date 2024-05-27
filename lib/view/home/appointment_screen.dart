import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rentworkdo/view/home/reservation_screen.dart';
import '../../components/app_constant.dart';
import '../../components/colors.dart';
import '../../components/images.dart';
import '../../components/string.dart';
import '../../controller/step_controller.dart';
import '../../widget/app_bar.dart';
import '../../widget/bottom_date_picker.dart';
import '../../widget/bottom_guest_select.dart';
import '../../widget/common_list_tile.dart';
import '../../widget/date_box_to.dart';
import '../../widget/guest_box.dart';

class AppoinmentScreen extends StatelessWidget {
  AppoinmentScreen({super.key});

  final appoinmentController = Get.put(AppoinmentController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.whiteColor,
      appBar: PreferredSize(
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
          title: "Appointment",
          isTrailing: true,
          trailingIcon: Image.asset(
            AppIcon.moreVertical,
            scale: width / 300,
            color: AppColors.blackColor,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
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
                    width: width / 12,
                  )
                ],
              ),
              SizedBox(height: height / 80),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                      onTap: () {
                        Get.bottomSheet(
                            BottomDatePicker()
                        );
                        // Get.bottomSheet(BottomDatePicker(),
                        //     barrierColor:
                        //         Colors.grey.shade200.withOpacity(0.8));
                      },
                      child: DateBox(AppText.datefrom)),
                  GestureDetector(
                      onTap: () {
                        // Get.bottomSheet(BottomDatePicker(),
                        //     barrierColor:
                        //         Colors.grey.shade200.withOpacity(0.8));
                      },
                      child: DateBox(AppText.dateto)),
                  GestureDetector(
                    onTap: () {
                      Get.bottomSheet(SelectGuest(),
                          barrierColor: Colors.grey.shade200.withOpacity(0.8));
                    },
                    child: const GuestBox(),
                  )
                ],
              ),
              SizedBox(height: height / 40),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    AppText.optionals,
                    style: TextStyle(
                        fontSize: width / 25,
                        fontFamily: AppText.montserratSemiBold,
                        color: AppColors.blackColor),
                  ),
                  Icon(
                    Icons.keyboard_arrow_down,
                    color: AppColors.blackColor,
                    size: width / 19,
                  )
                ],
              ),
              SizedBox(
                height: height / 80,
              ),
              ComListTile(
                textColor: AppColors.blackColor,
                leading:
                    Image.asset(AppIcon.kitchen, color: AppColors.blackColor),
                title: AppText.kitchenAppliances,
                subtitle: AppText.kitchenAppliancesSubtitle,
                trailing: Obx(
                  () => Transform.scale(
                    scale: 0.65,
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          border: Border.all(color: AppColors.boxBorder)),
                      child: CupertinoSwitch(
                        activeColor: CupertinoColors.white,
                        trackColor: AppColors.whiteColor,
                        thumbColor: CupertinoColors.black,
                        value: appoinmentController.isSwitchKitchen.value,
                        onChanged: (value) {
                          appoinmentController.isSwitchKitchen.value = value;
                        },
                      ),
                    ),
                  ),
                ),
                backgroundColor: AppColors.whiteColor,
                borderColor: AppColors.blackColor,
              ),
              SizedBox(
                height: height / 60,
              ),
              ComListTile(
                textColor: AppColors.whiteColor,
                leading:
                    Image.asset(AppIcon.kitchen, color: AppColors.whiteColor),
                title: AppText.modernInterior,
                subtitle: AppText.modernInteriorSubtitle,
                trailing: Obx(
                  () => Transform.scale(
                    scale: 0.65,
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: CupertinoSwitch(
                        activeColor: CupertinoColors.white,
                        trackColor: AppColors.whiteColor,
                        thumbColor: CupertinoColors.black,
                        value: appoinmentController.isSwitchInterior.value,
                        onChanged: (value) {
                          appoinmentController.isSwitchInterior.value = value;
                        },
                      ),
                    ),
                  ),
                ),
                backgroundColor: AppColors.blackColor,
                borderColor: AppColors.blackColor,
              ),
              SizedBox(height: height / 80),
              Text(
                "Summary:",
                style: TextStyle(
                    fontSize: width / 25,
                    fontFamily: AppText.montserratSemiBold,
                    color: AppColors.blackColor),
              ),
              SizedBox(height: height / 80),
              Container(
                padding: EdgeInsets.all(width / 20),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(width / 50),
                    border: Border.all(color: AppColors.boxBorder)),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Fee & Tax Details",
                              style: TextStyle(
                                  fontSize: width / 25,
                                  fontFamily: AppText.montserratBold,
                                  color: AppColors.blackColor),
                            ),
                            Text(
                              "3 nights x 2 persons",
                              style: TextStyle(
                                  fontSize: width / 28,
                                  fontFamily: AppText.montserratMedium,
                                  color: AppColors.blackColor),
                            )
                          ],
                        ),
                        const Spacer(),
                        Text(
                          "\$515",
                          style: TextStyle(
                              fontSize: width / 20,
                              fontFamily: AppText.montserratBold,
                              color: AppColors.blackColor),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: height / 100,
                    ),
                    Divider(
                      color: Colors.grey.shade300,
                      thickness: 1.5,
                    ),
                    SizedBox(
                      height: height / 100,
                    ),
                    Row(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Service charges",
                              style: TextStyle(
                                  fontSize: width / 25,
                                  fontFamily: AppText.montserratBold,
                                  color: AppColors.blackColor),
                            ),
                            Text(
                              "Room cleanings",
                              style: TextStyle(
                                  fontSize: width / 28,
                                  fontFamily: AppText.montserratMedium,
                                  color: AppColors.blackColor),
                            )
                          ],
                        ),
                        const Spacer(),
                        Text(
                          "\$515",
                          style: TextStyle(
                              fontSize: width / 20,
                              fontFamily: AppText.montserratBold,
                              color: AppColors.blackColor),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: height / 50,
                    ),
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
                    )
                  ],
                ),
              ),
              SizedBox(height: height / 30),
              GestureDetector(
                onTap: () {
                  Get.to(ReservationScreen());
                  // Get.toNamed(AppRoute.appoinmentStepScreen);
                  // appoinmentController.stepperCounter.value = 0;
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
              SizedBox(height: height / 20),
            ],
          ),
        ),
      ),
    );
  }
}
