import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../components/app_constant.dart';
import '../../components/colors.dart';
import '../../components/images.dart';
import '../../components/string.dart';
import '../../controller/step_controller.dart';


class AppoinmentFirstStep extends StatelessWidget {
  AppoinmentFirstStep({super.key});


  final appoinmentController = Get.put(AppoinmentController());

  @override
  Widget build(BuildContext context) {
    appoinmentController.step1Selected.value = 0;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: height / 30,
        ),
        Text(
          "Things to keep in mind",
          style: TextStyle(
              fontSize: width / 18,
              fontFamily: AppText.montserratSemiBold,
              color: AppColors.blackColor),
        ),
        SizedBox(
          height: height / 50,
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              GestureDetector(
                onTap: () {
                  appoinmentController.firstCondition.value =
                  !appoinmentController.firstCondition.value;
                },
                child: Obx(() {
                  return Container(
                    height: height / 30,
                    width: height / 30,
                    decoration: BoxDecoration(
                        border: Border.all(
                            color: appoinmentController
                                .firstCondition.value ==
                                true
                                ? AppColors.blackColor
                                : AppColors.boxBorder),
                        borderRadius: BorderRadius.circular(width / 80)),
                    child:
                    appoinmentController.firstCondition.value == true
                        ? Icon(
                      Icons.check,
                      size: width / 26,
                    )
                        : const SizedBox(),
                  );
                }),
              ),
              SizedBox(
                width: width / 30,
              ),
              SizedBox(
                  width: width / 1.3,
                  child: Text(
                    "It is not allowed to take guns  or other dangerous things.",
                    style: TextStyle(
                        fontFamily: AppText.montserratSemiBold,
                        fontSize: width / 26),
                  )),
            ],
          ),
        ),
        SizedBox(
          height: height / 50,
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              GestureDetector(
                onTap: () {
                  appoinmentController.secondCondition.value =
                  !appoinmentController.secondCondition.value;
                },
                child: Obx(() {
                  return Container(
                    height: height / 30,
                    width: height / 30,
                    decoration: BoxDecoration(
                        border: Border.all(
                            color: appoinmentController
                                .secondCondition.value ==
                                true
                                ? AppColors.blackColor
                                : AppColors.boxBorder),
                        borderRadius: BorderRadius.circular(width / 80)),
                    child:
                    appoinmentController.secondCondition.value == true
                        ? Icon(
                      Icons.check,
                      size: width / 26,
                    )
                        : const SizedBox(),
                  );
                }),
              ),
              SizedBox(
                width: width / 30,
              ),
              SizedBox(
                  width: width / 1.3,
                  child: Text(
                    "It is not allowed to make photographs.",
                    style: TextStyle(
                        fontFamily: AppText.montserratSemiBold,
                        fontSize: width / 26),
                  )),
            ],
          ),
        ),
        SizedBox(
          height: height / 50,
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              GestureDetector(
                onTap: () {
                  appoinmentController.thirdCondition.value =
                  !appoinmentController.thirdCondition.value;
                },
                child: Obx(() {
                  return Container(
                    height: height / 30,
                    width: height / 30,
                    decoration: BoxDecoration(
                        border: Border.all(
                            color: appoinmentController
                                .thirdCondition.value ==
                                true
                                ? AppColors.blackColor
                                : AppColors.boxBorder),
                        borderRadius: BorderRadius.circular(width / 80)),
                    child:
                    appoinmentController.thirdCondition.value == true
                        ? Icon(
                      Icons.check,
                      size: width / 26,
                    )
                        : const SizedBox(),
                  );
                }),
              ),
              SizedBox(
                width: width / 30,
              ),
              SizedBox(
                  width: width / 1.3,
                  child: Text(
                    "Disturbing other Guests is not allowed.",
                    style: TextStyle(
                        fontFamily: AppText.montserratSemiBold,
                        fontSize: width / 26),
                  )),
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
                // GestureDetector(
                //   onTap: (){
                //     Navigator.pop(context);
                //   },
                //   child: Container(
                //     width: width/2.4,
                //     decoration: BoxDecoration(
                //       border: Border.all(
                //           color: AppColors.blackColor
                //       ),
                //       borderRadius: BorderRadius.circular(6),
                //     ),
                //     child:    Center(
                //       child: Row(
                //       //  mainAxisAlignment: MainAxisAlignment.,
                //         children: [
                //
                //           Image.asset(
                //             AppIcon.backArrow,
                //             color: AppColors.blackColor,
                //             height: width / 10,
                //             scale: 3.5,
                //
                //           ),
                //           Text(
                //             "Back",
                //             style: TextStyle(
                //                 fontSize:14,
                //                 fontFamily: AppText.montserratBold,
                //                 color: AppColors.blackColor),
                //           ),
                //           // SizedBox(
                //           //   width: width / 135,
                //           // ),
                //
                //         ],
                //       ),
                //     ),
                //   ),
                // ),
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
                    appoinmentController.stepperCounter.value = 1;
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
        // Padding(
        //   padding: const EdgeInsets.all(8.0),
        //   child: Container(
        //     height: height/16,
        //     width: width,
        //     child: Row(
        //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
        //       children: [
        //         GestureDetector(
        //           onTap: (){
        //             Get.back();
        //           },
        //           child: Container(
        //             width: width/2.4,
        //             decoration: BoxDecoration(
        //               border: Border.all(
        //                 color: AppColors.blackColor
        //               ),
        //               borderRadius: BorderRadius.circular(6),
        //             ),
        //             child:    Center(
        //               child: Row(
        //                mainAxisAlignment: MainAxisAlignment.start,
        //                 children: [
        //
        //                   Image.asset(
        //                     AppIcon.backArrow,
        //                     color: AppColors.blackColor,
        //                     height: width / 10,
        //                     scale: 2.5,
        //
        //                   ),
        //                   Text(
        //                     "Back",
        //                     style: TextStyle(
        //                         fontSize:width / 20,
        //                         fontFamily: AppText.montserratBold,
        //                         color: AppColors.blackColor),
        //                 ),
        //                   // SizedBox(
        //                   //   width: width / 135,
        //                   // ),
        //
        //                 ],
        //               ),
        //             ),
        //           ),
        //         ),
        //         GestureDetector(
        //           onTap: (){
        //             appoinmentController.stepperCounter.value = 1;
        //           },
        //           child: Container(
        //             width: width/2.4,
        //             decoration: BoxDecoration(
        //              color: AppColors.blackColor,
        //               borderRadius: BorderRadius.circular(6),
        //             ),
        //             child:   Center(
        //               child: Row(
        //                 mainAxisAlignment: MainAxisAlignment.end,
        //                 children: [
        //                   Text(
        //                     "Next",
        //                     style: TextStyle(
        //                         fontSize:width / 20,
        //                         fontFamily: AppText.montserratBold,
        //                         color: AppColors.whiteColor),
        //                 ),
        //                   Image.asset(
        //                     AppIcon.arrowRightSmall,
        //                     color: AppColors.whiteColor,
        //                     height: width / 10,
        //                     scale: 2.5,
        //                   ),
        //                   SizedBox(
        //                     width: width / 20,
        //                   ),
        //
        //                 ],
        //               ),
        //             ),
        //           ),
        //         ),
        //       ],
        //     ),
        //
        //   ),
        // )
        // Row(
        //   children: [
        //
        //     GestureDetector(
        //       onTap: () {
        //         appoinmentController.stepperCounter.value = 1;
        //       },
        //       child: Container(
        //         padding: EdgeInsets.symmetric(
        //             horizontal: width / 100, vertical: height / 100),
        //         decoration: BoxDecoration(
        //             borderRadius: BorderRadius.circular(width / 50),
        //             color: AppColors.blackColor),
        //         child:
        //   Row(
        //           children: [
        //             Text(
        //               "Make Reservation",
        //               style: TextStyle(
        //                   fontSize: width / 25,
        //                   fontFamily: AppText.montserratBold,
        //                   color: AppColors.whiteColor),
        //             ),
        //             // SizedBox(
        //             //   width: width / 135,
        //             // ),
        //             Image.asset(
        //               AppIcon.arrowRightSmall,
        //               color: AppColors.whiteColor,
        //               height: width / 10,
        //             )
        //           ],
        //         ),
        //       ),
        //     ),
        //     // GestureDetector(
        //     //   onTap: () {
        //     //     appoinmentController.stepperCounter.value = 1;
        //     //   },
        //     //   child: Container(
        //     //     padding: EdgeInsets.symmetric(
        //     //         horizontal: width / 15, vertical: height / 100),
        //     //     decoration: BoxDecoration(
        //     //         borderRadius: BorderRadius.circular(width / 50),
        //     //         color: AppColors.blackColor),
        //     //     child: Row(
        //     //       children: [
        //     //         Text(
        //     //           "Make Reservation",
        //     //           style: TextStyle(
        //     //               fontSize: width / 25,
        //     //               fontFamily: AppText.montserratBold,
        //     //               color: AppColors.whiteColor),
        //     //         ),
        //     //         SizedBox(
        //     //           width: width / 100,
        //     //         ),
        //     //         Image.asset(
        //     //           AppIcon.arrowRightSmall,
        //     //           color: AppColors.whiteColor,
        //     //           height: width / 10,
        //     //         )
        //     //       ],
        //     //     ),
        //     //   ),
        //     // ),
        //   ],
        // ),
      ],
    );
  }
}
