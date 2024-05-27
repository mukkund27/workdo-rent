import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../components/app_constant.dart';
import '../../components/colors.dart';
import '../../components/images.dart';
import '../../components/string.dart';
import '../../controller/step_controller.dart';
import '../../widget/bottom_date_picker.dart';
import '../../widget/bottom_guest_select.dart';
import '../../widget/date_box_to.dart';
import '../../widget/guest_box.dart';
import '../booking/receivingscreen.dart';

class AppoinmentFifthStep extends StatelessWidget {
  AppoinmentFifthStep({super.key});

  final appoinmentController = Get.put(AppoinmentController());

  @override
  Widget build(BuildContext context) {
    appoinmentController.step5Selected.value = 0;
    return Obx(() {
      if (appoinmentController.step5Selected.value == 0) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: height / 30,
            ),
            Text(
              "Review and pay",
              style: TextStyle(
                  fontSize: width / 18,
                  fontFamily: AppText.montserratSemiBold,
                  color: AppColors.blackColor),
            ),
            SizedBox(
              height: height / 60,
            ),
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
            SizedBox(
              height: height / 40,
            ),
            Text(
              "Book your stay",
              style: TextStyle(
                  fontSize: width / 18,
                  fontFamily: AppText.montserratSemiBold,
                  color: AppColors.blackColor),
            ),
            SizedBox(
              height: height / 60,
            ),
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
              height: height / 60,
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
                    Get.bottomSheet(SelectGuest(),
                        barrierColor: Colors.grey.shade200.withOpacity(0.8));
                  },
                  child: const GuestBox(),
                )
              ],
            ),
            SizedBox(
              height: height / 30,
            ),
            Text(
              "Payment Method:",
              style: TextStyle(
                  fontSize: width / 22,
                  fontFamily: AppText.montserratSemiBold,
                  color: AppColors.blackColor),
            ),
            SizedBox(
              height: height / 70,
            ),
            Container(
              height: height / 15,
              width: width / 1,
              padding: EdgeInsets.symmetric(horizontal: width / 26),
              margin: EdgeInsets.symmetric(vertical: height / 100),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(width / 100),
                  border: Border.all(color: AppColors.blackColor)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Travel Card (**** 4576)",
                    style: TextStyle(
                        fontFamily: AppText.montserratSemiBold,
                        fontSize: width / 30),
                  ),
                  Container(
                      height: height / 40,
                      width: height / 40,
                      padding: EdgeInsets.all(width / 150),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(height / 20),
                          border: Border.all(color: AppColors.boxBorder)),
                      child: CircleAvatar(
                        backgroundColor: AppColors.blackColor,
                      ))
                ],
              ),
            ),
            SizedBox(
              height: height / 300,
            ),
            Container(
              height: height / 15,
              width: width / 1,
              padding: EdgeInsets.symmetric(horizontal: width / 26),
              margin: EdgeInsets.symmetric(vertical: height / 100),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(width / 100),
                  border: Border.all(color: AppColors.boxBorder)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Add Payment Method",
                    style: TextStyle(
                        fontFamily: AppText.montserratSemiBold,
                        fontSize: width / 30),
                  ),
                  SizedBox(
                    width: width / 50,
                  ),
                  Container(
                      height: height / 40,
                      width: height / 40,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(height / 20),
                          border: Border.all(color: AppColors.blackColor)),
                      child: Center(
                          child: Icon(
                        Icons.add,
                        size: width / 25,
                      )))
                ],
              ),
            ),
            SizedBox(
              height: height / 60,
            ),
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
            SizedBox(
              height: height / 30,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(
                height: height/16,
                width: width,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: (){
                        appoinmentController.stepperCounter.value=3;
                      },
                      child: Container(
                        width: width/2.4,
                        decoration: BoxDecoration(
                          border: Border.all(color: AppColors.blackColor),
                          color: AppColors.whiteColor,
                          borderRadius: BorderRadius.circular(6),
                        ),
                        child:   Center(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              SizedBox(
                                width: width / 15,
                              ),
                              Image.asset(
                                "assets/icons/arrow-left-small_new.png",
                                color: AppColors.blackColor,
                                height: width / 10,
                                scale: 1,
                              ),
                              Text(
                                "Back",
                                style: TextStyle(
                                    fontSize:14,
                                    fontFamily: AppText.montserratBold,
                                    color: AppColors.blackColor),
                              ),




                            ],
                          ),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: (){
                        appoinmentController.step5Selected.value=1;
                      },
                      child: Container(
                        width: width/2.4,
                        decoration: BoxDecoration(
                          color: AppColors.blackColor,
                          borderRadius: BorderRadius.circular(6),
                        ),
                        child:   Center(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Text(
                                "Confirm",
                                style: TextStyle(
                                    fontSize:14,
                                    fontFamily: AppText.montserratBold,
                                    color: AppColors.whiteColor),
                              ),
                              Image.asset(
                                AppIcon.arrowRightSmall,
                                color: AppColors.whiteColor,
                                height: width / 10,
                                scale: 3.5,
                              ),
                              SizedBox(
                                width: width / 15,
                              ),

                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),

              ),
            ),
            // GestureDetector(
            //   onTap: () {
            //     Get.to(ReceivingScreen(),);
            //   },
            //   child: Container(
            //     padding: EdgeInsets.symmetric(
            //         horizontal: width / 15, vertical: height / 100),
            //     decoration: BoxDecoration(
            //         borderRadius: BorderRadius.circular(width / 50),
            //         color: AppColors.blackColor),
            //     child: Row(
            //       children: [
            //         Text(
            //           "Confirm",
            //           style: TextStyle(
            //               fontSize: width / 25,
            //               fontFamily: AppText.montserratBold,
            //               color: AppColors.whiteColor),
            //         ),
            //         SizedBox(
            //           width: width / 100,
            //         ),
            //         Image.asset(
            //           AppIcon.arrowRightSmall,
            //           color: AppColors.whiteColor,
            //           height: width / 10,
            //         )
            //       ],
            //     ),
            //   ),
            // ),
          ],
        );
      }
      else {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: height / 30,
            ),
            Text(
              "Pay with",
              style: TextStyle(
                  fontSize: width / 18,
                  fontFamily: AppText.montserratSemiBold,
                  color: AppColors.blackColor),
            ),
            SizedBox(
              height: height / 60,
            ),
            Row(
              children: [
                Text(
                  "Payment currency:",
                  style: TextStyle(
                      fontSize: width / 26,
                      fontFamily: AppText.montserratMedium,
                      color: AppColors.greyColor),
                ),
                SizedBox(
                  width: width / 80,
                ),
                Text(
                  "USD",
                  style: TextStyle(
                      fontSize: width / 26,
                      fontFamily: AppText.montserratMedium,
                      color: AppColors.blackColor),
                ),
              ],
            ),
            SizedBox(
              height: height / 60,
            ),
            SizedBox(
              height: height / 70,
            ),
            Container(
              height: height / 15,
              width: width / 1,
              padding: EdgeInsets.symmetric(horizontal: width / 26),
              margin: EdgeInsets.symmetric(vertical: height / 100),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(width / 100),
                  border: Border.all(color: AppColors.blackColor)),
              child: Row(
                children: [
                  Image.asset(AppImage.googlePay),
                  SizedBox(
                    width: width / 80,
                  ),
                  Text(
                    "Google Pay",
                    style: TextStyle(
                        fontFamily: AppText.montserratSemiBold,
                        fontSize: width / 30),
                  ),
                  const Spacer(),
                  Container(
                      height: height / 40,
                      width: height / 40,
                      padding: EdgeInsets.all(width / 150),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(height / 20),
                          border: Border.all(color: AppColors.boxBorder)),
                      child: CircleAvatar(
                        backgroundColor: AppColors.blackColor,
                      ))
                ],
              ),
            ),
            Container(
              height: height / 15,
              width: width / 1,
              padding: EdgeInsets.symmetric(horizontal: width / 26),
              margin: EdgeInsets.symmetric(vertical: height / 100),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(width / 100),
                  border: Border.all(color: AppColors.boxBorder)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Add Payment Method",
                    style: TextStyle(
                        fontFamily: AppText.montserratSemiBold,
                        fontSize: width / 30),
                  ),
                  SizedBox(
                    width: width / 50,
                  ),
                  Container(
                      height: height / 40,
                      width: height / 40,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(height / 20),
                          border: Border.all(color: AppColors.blackColor)),
                      child: Center(
                          child: Icon(
                        Icons.add,
                        size: width / 25,
                      )))
                ],
              ),
            ),
            SizedBox(
              height: height / 40,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(
                height: height/16,
                width: width,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: (){
                        appoinmentController.step5Selected.value = 0;
                      },
                      child: Container(
                        width: width/2.4,
                        decoration: BoxDecoration(
                          border: Border.all(color: AppColors.blackColor),
                          color: AppColors.whiteColor,
                          borderRadius: BorderRadius.circular(6),
                        ),
                        child:   Center(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              SizedBox(
                                width: width / 15,
                              ),
                              Image.asset(
                                "assets/icons/arrow-left-small_new.png",
                                color: AppColors.blackColor,
                                height: width / 10,
                                scale: 1,
                              ),
                              Text(
                                "Back",
                                style: TextStyle(
                                    fontSize:14,
                                    fontFamily: AppText.montserratBold,
                                    color: AppColors.blackColor),
                              ),




                            ],
                          ),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: (){
                        Get.to(()=>const ReceivingScreen());
                      },
                      child: Container(
                        width: width/2.4,
                        decoration: BoxDecoration(
                          color: AppColors.blackColor,
                          borderRadius: BorderRadius.circular(6),
                        ),
                        child:   Center(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Text(
                                "Confirm",
                                style: TextStyle(
                                    fontSize:14,
                                    fontFamily: AppText.montserratBold,
                                    color: AppColors.whiteColor),
                              ),
                              Image.asset(
                                AppIcon.arrowRightSmall,
                                color: AppColors.whiteColor,
                                height: width / 10,
                                scale: 3.5,
                              ),
                              SizedBox(
                                width: width / 15,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),

              ),
            ),
            // GestureDetector(
            //   onTap: () {
            //   Get.to(()=>ReceivingScreen());
            //   },
            //   child: Container(
            //     padding: EdgeInsets.symmetric(
            //         horizontal: width / 15, vertical: height / 100),
            //     decoration: BoxDecoration(
            //         borderRadius: BorderRadius.circular(width / 50),
            //         color: AppColors.blackColor),
            //     child: Row(
            //       children: [
            //         Text(
            //           "Confirm",
            //           style: TextStyle(
            //               fontSize: width / 25,
            //               fontFamily: AppText.montserratBold,
            //               color: AppColors.whiteColor),
            //         ),
            //         SizedBox(
            //           width: width / 100,
            //         ),
            //         Image.asset(
            //           AppIcon.arrowRightSmall,
            //           color: AppColors.whiteColor,
            //           height: width / 10,
            //         )
            //       ],
            //     ),
            //   ),
            // ),
          ],
        );
      }
    });
  }
}
