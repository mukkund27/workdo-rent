import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../components/app_constant.dart';
import '../../components/colors.dart';
import '../../components/images.dart';
import '../../components/string.dart';
import '../../controller/step_controller.dart';

class AppoinmentThirdStep extends StatelessWidget {
  AppoinmentThirdStep({super.key});

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
          "Confirm yor phone number \nand email address",
          style: TextStyle(
              fontSize: width / 18,
              fontFamily: AppText.montserratSemiBold,
              color: AppColors.blackColor),
        ),
        SizedBox(
          height: height / 30,
        ),
        Text(
          "Phone:",
          style: TextStyle(
              fontSize: width / 27,
              fontFamily: AppText.montserratSemiBold,
              color: AppColors.blackColor),
        ),
        SizedBox(
          height: height / 60,
        ),
        Container(
          height: height / 20,
          width: width / 1.25,
          padding: EdgeInsets.only(left: width / 25),
          decoration: BoxDecoration(
              border: Border.all(
                color: AppColors.boxBorder,
              ),
              borderRadius: BorderRadius.circular(width / 50)),
          child: TextField(
            keyboardType: TextInputType.number,
            decoration: InputDecoration(
                hintStyle: TextStyle(
                  fontSize: width / 25,
                  fontFamily: AppText.montserratSemiBold,
                  color: AppColors.blackColor,
                ),
                border: InputBorder.none,
                hintText: "+48___ ___ ___"),
          ),
        ),
        SizedBox(
          height: height / 30,
        ),
        Text(
          "Email:",
          style: TextStyle(
              fontSize: width / 27,
              fontFamily: AppText.montserratSemiBold,
              color: AppColors.blackColor),
        ),
        SizedBox(
          height: height / 60,
        ),
        Container(
          height: height / 20,
          width: width / 1.25,
          padding: EdgeInsets.only(left: width / 25),
          decoration: BoxDecoration(
              border: Border.all(
                color: AppColors.boxBorder,
              ),
              borderRadius: BorderRadius.circular(width / 50)),
          child: TextField(
            keyboardType: TextInputType.emailAddress,
            decoration: InputDecoration(
                hintStyle: TextStyle(
                  fontSize: width / 25,
                  fontFamily: AppText.montserratSemiBold,
                  color: AppColors.blackColor,
                ),
                border: InputBorder.none,
                hintText: "john@doe.com"),
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
                    appoinmentController.stepperCounter.value = 1;
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
                    appoinmentController.stepperCounter.value = 3;
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
        //     appoinmentController.stepperCounter.value = 3;
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
