import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rentworkdo/components/app_constant.dart';
import '../components/colors.dart';
import '../components/images.dart';
import '../components/string.dart';
import '../controller/homepage_controller.dart';

class SelectGuest extends StatelessWidget {
  SelectGuest({super.key});

  final controller = Get.put(HomePageController());

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
                  Image.asset(AppIcon.roundCloseIcon,scale: 4.7,),
                  // CircleAvatar(
                  //   radius: width / 40,
                  //   backgroundColor: AppColors.blackColor,
                  //   child: Icon(Icons.clear, size: width / 25),
                  // ),

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
              height: height / 60,
            ),
            Container(
              height: height / 2.4,
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
                    Row(
                      children: [
                        Text(
                          AppText.select,
                          style: TextStyle(
                              fontFamily: AppText.montserratMedium,
                              fontSize: width / 20),
                        ),
                        Text(
                          AppText.guests,
                          style: TextStyle(
                              fontFamily: AppText.montserratSemiBold,
                              fontSize: width / 20),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: height / 80,
                    ),
                    Obx(() {
                      return GuestBottomSheet(
                        text1: "Children",
                        age: AppText.age,
                        counterText: controller.childrenCounter.value,
                        add: () {
                          controller.childrenCounter.value++;
                        },
                        remove: () {
                          if (controller.childrenCounter.value != 0 &&
                              controller.childrenCounter.value >= 0) {
                            controller.childrenCounter.value--;
                          }
                        },
                      );
                    }),
                    Obx(() {
                      return GuestBottomSheet(
                        text1: 'Adult',
                        age: AppText.age,
                        counterText: controller.adultCounter.value,
                        add: () {
                          controller.adultCounter.value++;
                        },
                        remove: () {
                          if (controller.adultCounter.value != 0 &&
                              controller.adultCounter.value >= 0) {
                            controller.adultCounter.value--;
                          }
                        },
                      );
                    }),
                    Obx(() {
                      return GuestBottomSheet(
                        text1: 'Senior Citizen',
                        age: AppText.age,
                        counterText: controller.seniorCitizenCounter.value,
                        add: () {
                          controller.seniorCitizenCounter.value++;
                        },
                        remove: () {
                          if (controller.seniorCitizenCounter.value != 0 &&
                              controller.seniorCitizenCounter.value >= 0) {
                            controller.seniorCitizenCounter.value--;
                          }
                        },
                      );
                    }),
                    SizedBox(
                      height: height / 50,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        GestureDetector(
                          onTap: () {
                            controller.seniorCitizenCounter.value = 0;
                            controller.childrenCounter.value = 0;
                            controller.adultCounter.value = 0;
                          },
                          child: Container(
                            height: height / 18,
                            width: width / 2.7,
                            decoration: BoxDecoration(
                                color: AppColors.whiteColor,
                                borderRadius: BorderRadius.circular(width / 30),
                                border:
                                    Border.all(color: AppColors.blackColor)),
                            child: Center(
                              child: Text(
                                AppText.clearAll,
                                style: TextStyle(
                                    fontFamily: AppText.montserratSemiBold,
                                    color: AppColors.blackColor,
                                    fontSize: width / 25),
                              ),
                            ),
                          ),
                        ),
                        Container(
                          height: height / 18,
                          width: width / 2.5,
                          decoration: BoxDecoration(
                              color: AppColors.blackColor,
                              borderRadius: BorderRadius.circular(width / 30)),
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
                      ],
                    ),
                    SizedBox(
                      height: height / 50,
                    ),
                  ],
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}

class GuestBottomSheet extends StatelessWidget {
  final String text1;
  final String age;
  final int counterText;
  final void Function()? add;
  final void Function()? remove;

  const GuestBottomSheet(
      {super.key,
      required this.text1,
      required this.age,
      required this.counterText,
      required this.add,
      required this.remove});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height / 16,
      width: width,
      margin: EdgeInsets.symmetric(vertical: height / 100),
      padding:
          EdgeInsets.symmetric(horizontal: width / 30, vertical: width / 60),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(width / 30),
          border: Border.all(color: AppColors.guestBorder)),
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                text1,
                style: TextStyle(
                    fontSize: width / 25,
                    color: AppColors.blackColor,
                    fontFamily: AppText.montserratSemiBold),
              ),
              Text(
                age,
                style: TextStyle(
                    fontSize: width / 30,
                    color: AppColors.guestBorder,
                    fontFamily: AppText.montserratSemiBold),
              ),
            ],
          ),
          const Spacer(),
          GestureDetector(
            onTap: remove,
            child: CircleAvatar(
              radius: width / 35,
              backgroundColor: AppColors.guestBorder,
              child: Icon(
                Icons.remove,
                size: width / 30,
                color: AppColors.whiteColor,
              ),
            ),
          ),
          SizedBox(
            width: width / 60,
          ),
          Text(
            counterText.toString(),
            style: TextStyle(
                fontSize: width / 20,
                color: AppColors.blackColor,
                fontFamily: AppText.montserratSemiBold),
          ),
          SizedBox(
            width: width / 60,
          ),
          GestureDetector(
            onTap: add,
            child: CircleAvatar(
              radius: width / 35,
              backgroundColor: AppColors.blackColor,
              child: Icon(
                Icons.add,
                size: width / 30,
                color: AppColors.whiteColor,
              ),
            ),
          )
        ],
      ),
    );
  }
}
