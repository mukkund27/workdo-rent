import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../components/app_constant.dart';
import '../../components/colors.dart';
import '../../components/images.dart';
import '../../components/string.dart';
import '../../controller/step_controller.dart';

class SelectIDType extends StatelessWidget {
  SelectIDType({super.key});
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
          "Select an ID type to add",
          style: TextStyle(
              fontSize: width / 18,
              fontFamily: AppText.montserratSemiBold,
              color: AppColors.blackColor),
        ),
        SizedBox(height: height / 40),
        ...List.generate(
          3,
          (index) => GestureDetector(onTap: () {
            appoinmentController.selectIdType.value = index;
          }, child: Obx(() {
            return Container(
              height: height / 15,
              width: width / 1,
              padding: EdgeInsets.symmetric(horizontal: width / 26),
              margin: EdgeInsets.symmetric(vertical: height / 100),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(width / 100),
                  border: Border.all(
                      color: appoinmentController.selectIdType.value == index
                          ? AppColors.blackColor
                          : AppColors.boxBorder)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    appoinmentController.idTypeList[index],
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
                      child: appoinmentController.selectIdType.value == index
                          ? CircleAvatar(
                              backgroundColor: AppColors.blackColor,
                            )
                          : const SizedBox())
                ],
              ),
            );
          })),
        ),
        SizedBox(
          height: height / 60,
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              width: width / 80,
            ),
            Icon(
              Icons.lock,
              color: AppColors.greyColor,
              size: width / 21,
            ),
            SizedBox(
              width: width / 80,
            ),
            Text(
              "Your ID isn’t shared with other people \nwho use app.",
              style: TextStyle(
                  fontFamily: AppText.montserratMedium,
                  fontSize: width / 28,
                  color: AppColors.greyColor),
            )
          ],
        ),
        SizedBox(height: height / 30),
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
                    appoinmentController.step4Selected.value = 0;
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
                    appoinmentController.stepperCounter.value = 4;
                    // appoinmentController.stepperCounter.value = 4;
                  },
                  child: Container(
                    width: width/2.4,
                    decoration: BoxDecoration(
                      color: AppColors.blackColor,
                      borderRadius: BorderRadius.circular(6),
                    ),
                    child:   Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          SizedBox(
                            width: width / 12,
                          ),
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
        //     appoinmentController.stepperCounter.value = 4;
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
}
