import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../components/app_constant.dart';
import '../../components/colors.dart';
import '../../components/images.dart';
import '../../components/string.dart';
import '../../controller/step_controller.dart';

class AddIdStep extends StatelessWidget {
  AddIdStep({super.key});
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
          "Before you book, let’s \nadd your ID",
          style: TextStyle(
              fontSize: width / 18,
              fontFamily: AppText.montserratSemiBold,
              color: AppColors.blackColor),
        ),
        SizedBox(
          height: height / 40,
        ),
        Text(
          "A government ID helps us check that you’re really\nyou. It also helps us keep secure, fight fraud, and\n more.",
          style: TextStyle(
              fontSize: width / 29,
              fontFamily: AppText.montserratMedium,
              color: AppColors.greyColor),
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
                    appoinmentController.stepperCounter.value = 2;
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
                // GestureDetector(
                //   onTap: (){
                //     appoinmentController.stepperCounter.value = 2;
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
                //         mainAxisAlignment: MainAxisAlignment.start,
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
                    appoinmentController.step4Selected.value=1;
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
                            width: width / 10
                          ),
                          Text(
                            "Okay",
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

        SizedBox(
          height: height / 30,
        ),
        Center(
          child: Image.asset(
            AppImage.addIdIllustration,
            height: height / 2.6,
            width: width / 1.7,
            fit: BoxFit.fill,
          ),
        )
      ],
    );
  }
}
