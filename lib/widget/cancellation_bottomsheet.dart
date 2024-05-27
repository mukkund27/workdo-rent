import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../components/app_constant.dart';
import '../components/colors.dart';
import '../components/images.dart';
import '../components/string.dart';
import '../view/booking/my_booking_screen.dart';

class CancellationBottomSheet extends StatelessWidget {
  const CancellationBottomSheet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StatefulBuilder(
      builder: (context, setState) {
        return Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            GestureDetector(
              onTap: () {
                Get.back();
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircleAvatar(
                    radius: width / 40,
                    backgroundColor: AppColors.blackColor,
                    child: Icon(Icons.clear, size: width / 25),
                  ),
                  SizedBox(
                    width: width / 80,
                  ),
                  Text(
                    "Close",
                    style: TextStyle(
                        fontSize: width / 28,
                        fontFamily: AppText.montserratSemiBold),
                  )
                ],
              ),
            ),
            SizedBox(
              height: height / 30,
            ),
            Flexible(
              child: Container(
                width: width,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.vertical(
                    top: Radius.circular(width / 20),
                  ),
                ),
                child: Padding(
                  padding: EdgeInsets.only(
                      left: height / 40, right: height / 40, top: height / 40),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Perfect Room, East\nVillage Dream",
                        style: TextStyle(
                            fontFamily: AppText.montserratMedium,
                            fontSize: width / 20),
                      ),
                      SizedBox(
                        height: height / 40,
                      ),
                      Text(
                        "Cancellation cost",
                        style: TextStyle(
                            fontFamily: AppText.montserratSemiBold,
                            fontSize: width / 25),
                      ),
                      SizedBox(height: height / 50),
                      Container(
                        padding: EdgeInsets.all(width / 25),
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
                                          fontSize: width / 27,
                                          fontFamily: AppText.montserratBold,
                                          color: AppColors.blackColor),
                                    ),
                                    Text(
                                      "3 nights x 2 persons",
                                      style: TextStyle(
                                          fontSize: width / 30,
                                          fontFamily: AppText.montserratMedium,
                                          color: AppColors.blackColor),
                                    )
                                  ],
                                ),
                                const Spacer(),
                                Text(
                                  "\$515",
                                  style: TextStyle(
                                      fontSize: width / 22,
                                      fontFamily: AppText.montserratBold,
                                      color: AppColors.blackColor),
                                ),
                              ],
                            ),
                            SizedBox(height: height / 150),
                            Divider(
                              color: Colors.grey.shade300,
                              thickness: 1.5,
                            ),
                            SizedBox(height: height / 150),
                            Row(
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Service charges",
                                      style: TextStyle(
                                          fontSize: width / 27,
                                          fontFamily: AppText.montserratBold,
                                          color: AppColors.blackColor),
                                    ),
                                    Text(
                                      "Room cleanings",
                                      style: TextStyle(
                                          fontSize: width / 30,
                                          fontFamily: AppText.montserratMedium,
                                          color: AppColors.blackColor),
                                    )
                                  ],
                                ),
                                const Spacer(),
                                Text(
                                  "\$515",
                                  style: TextStyle(
                                      fontSize: width / 22,
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
                                  horizontal: width / 20,
                                  vertical: height / 80),
                              decoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadius.circular(width / 50),
                                  color: AppColors.blackColor),
                              child: Row(
                                children: [
                                  Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Total Price:",
                                          style: TextStyle(
                                              fontSize: width / 28,
                                              fontFamily:
                                                  AppText.montserratBold,
                                              color: AppColors.whiteColor),
                                        ),
                                        Text(
                                          "Tax included",
                                          style: TextStyle(
                                              fontSize: width / 28,
                                              fontFamily:
                                                  AppText.montserratMedium,
                                              color: AppColors.whiteColor),
                                        ),
                                      ]),
                                  const Spacer(),
                                  Text(
                                    "\$530",
                                    style: TextStyle(
                                        fontSize: width / 21,
                                        fontFamily: AppText.montserratBold,
                                        color: AppColors.whiteColor),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                      const Spacer(),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          GestureDetector(
                            onTap: (){
                              Get.to(const MyBookingScreen());
                            },
                            child: Container(
                              height: height / 18,
                              width: width / 3,
                              decoration: BoxDecoration(
                                  color: AppColors.whiteColor,
                                  borderRadius: BorderRadius.circular(width / 30),
                                  border:
                                      Border.all(color: AppColors.blackColor)),
                              child: Center(
                                child: Text(
                                  AppText.cancel,
                                  style: TextStyle(
                                      fontFamily: AppText.montserratSemiBold,
                                      color: AppColors.blackColor,
                                      fontSize: width / 25),
                                ),
                              ),
                            ),
                          ),
                          GestureDetector(
                            onTap: (){
                              Get.to(const MyBookingScreen());
                            },
                            child: Container(
                              height: height / 18,
                              width: width / 2.5,
                              decoration: BoxDecoration(
                                  color: AppColors.blackColor,
                                  borderRadius:
                                      BorderRadius.circular(width / 30)),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(
                                    AppText.apply,
                                    style: TextStyle(
                                        fontFamily: AppText.montserratSemiBold,
                                        color: AppColors.whiteColor,
                                        fontSize: width / 25),
                                  ),
                                  SizedBox(width: width / 80),
                                  Image.asset(AppIcon.arrowRightSmall,
                                      scale: height / 200)
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                      const Spacer(),
                    ],
                  ),
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}
