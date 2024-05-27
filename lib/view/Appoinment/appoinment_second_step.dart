import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../components/app_constant.dart';
import '../../components/colors.dart';
import '../../components/images.dart';
import '../../components/string.dart';
import '../../controller/step_controller.dart';

class AppoinmentSecondStep extends StatelessWidget {
  AppoinmentSecondStep({super.key});

  final appoinmentController = Get.put(AppoinmentController());

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: height / 30,
        ),
        Text(
          "Tell your host about  your trip",
          style: TextStyle(
              fontSize: width / 18,
              fontFamily: AppText.montserratSemiBold,
              color: AppColors.blackColor),
        ),
        SizedBox(
          height: height / 50,
        ),
        SizedBox(
          width: width / 1.1,
          child: Text(
            "Help your host prepare for  your stay by answering their questionscheck in progress",
            style: TextStyle(
                fontSize: width / 25,
                fontFamily: AppText.montserratMedium,
                color: AppColors.greyColor),
          ),
        ),
        SizedBox(
          height: height / 30,
        ),
        Container(
          height: height / 5,
          width: width / 1.25,
          padding: EdgeInsets.all(width / 25),
          decoration: BoxDecoration(
              color: AppColors.chatCardReceiveColor,
              borderRadius: BorderRadius.circular(width / 50)),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: height / 20,
                width: height / 20,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(width / 80),
                    image: const DecorationImage(
                        image: AssetImage(AppImage.johnaTan))),
              ),
              SizedBox(width: width / 40),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: height / 70),
                  Text(
                    "Johnatan",
                    style: TextStyle(
                        fontSize: width / 25,
                        fontFamily: AppText.montserratSemiBold),
                  ),
                  SizedBox(height: height / 70),
                  SizedBox(
                    width: width / 1.9,
                    child: Text(
                      "Hello! I’m looking forward to having you stay in my home. Please let me know when you expect to arrrive.\nRobert",
                      style: TextStyle(
                          fontSize: width / 30,
                          color: AppColors.guestBorder,
                          fontFamily: AppText.montserratMedium),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        SizedBox(
          height: height / 40,
        ),
        Align(
          alignment: Alignment.centerRight,
          child: Container(
            height: height / 5,
            width: width / 1.25,
            padding: EdgeInsets.all(width / 25),
            decoration: BoxDecoration(
                color: AppColors.blackColor,
                borderRadius: BorderRadius.circular(width / 50)),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      "Johnatan",
                      style: TextStyle(
                          fontSize: width / 25,
                          color: AppColors.whiteColor,
                          fontFamily: AppText.montserratSemiBold),
                    ),
                    SizedBox(
                      width: width / 40,
                    ),
                    Container(
                      height: height / 20,
                      width: height / 20,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(width / 80),
                          image: const DecorationImage(
                              image: AssetImage(AppImage.johnaTan))),
                    ),
                  ],
                ),
                SizedBox(
                  height: height / 80,
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: Text(
                    textAlign: TextAlign.end,
                    "Hello! I’m looking forward to having you stay in my home. Please let me know when you expect to arrrive.\nRobert",
                    style: TextStyle(
                        fontSize: width / 30,
                        color: AppColors.guestBorder,
                        fontFamily: AppText.montserratMedium),
                  ),
                ),
              ],
            ),
          ),
        ),
        SizedBox(
          height: height / 30,
        ),
        Container(
          height: height / 16,
          width: width / 1.1,
          padding: EdgeInsets.only(left: width / 20),
          decoration: BoxDecoration(
            border: Border.all(color: AppColors.blackColor),
              borderRadius: BorderRadius.circular(width / 50),
              color: AppColors.whiteColor),
          child: Row(
            children: [
              SizedBox(
                width: width / 1.4,
                child: TextField(
                    style: TextStyle(
                        color: Colors.white,
                        fontFamily: AppText.montserratSemiBold),
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "Type your message...",
                        hintStyle: TextStyle(
                            color: AppColors.blackColor,
                            fontFamily: AppText.montserratSemiBold))),
              ),
              SizedBox(
                width: width / 100,
              ),
              Image.asset(
                AppIcon.sendIcon,
                color: AppColors.whiteColor,
                height: width / 10,
              )
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
                    appoinmentController.stepperCounter.value = 0;
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
                    appoinmentController.stepperCounter.value = 2;
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
                            "Next",
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
        //     appoinmentController.stepperCounter.value = 2;
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
        //           "Make Reservation",
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
        SizedBox(
          height: height / 30,
        ),
      ],
    );
  }
}
