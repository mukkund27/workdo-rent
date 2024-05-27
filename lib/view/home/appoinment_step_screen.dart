import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rentworkdo/view/Appoinment/appoinment_fifth_step.dart';
import 'package:rentworkdo/view/Appoinment/appoinment_first_step.dart';
import 'package:rentworkdo/view/Appoinment/appoinment_fourth_step.dart';
import 'package:rentworkdo/view/Appoinment/appoinment_second_step.dart';
import 'package:rentworkdo/view/Appoinment/appoinment_third_step.dart';
import '../../components/app_constant.dart';
import '../../components/colors.dart';
import '../../components/images.dart';
import '../../components/string.dart';
import '../../controller/step_controller.dart';
import '../../widget/app_bar.dart';

class AppoinmentStepScreen extends StatelessWidget {
  AppoinmentStepScreen({super.key});
  final appoinmentController = Get.put(AppoinmentController());
  final selectedStep = 0;

  @override
  Widget build(BuildContext context) {
    var arg = ModalRoute.of(context)?.settings.arguments;
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
              height: height / 50,
            ),
            title: arg == null ? "Appointment" : arg.toString(),
            isTrailing: true,
            trailingIcon: Icon(
              Icons.more_vert,
              color: AppColors.blackColor,
            )),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
            padding: EdgeInsets.symmetric(horizontal: width / 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: height / 60,
                ),
                Obx(() {
                  return Padding(
                    padding: appoinmentController.stepperCounter.value == 1
                        ? EdgeInsets.only(left: width / 5)
                        : appoinmentController.stepperCounter.value == 2
                            ? EdgeInsets.only(left: width / 2.6)
                            : appoinmentController.stepperCounter.value == 3
                                ? EdgeInsets.only(left: width / 1.78)
                                : appoinmentController.stepperCounter.value == 4
                                    ? EdgeInsets.only(left: width / 1.35)
                                    : EdgeInsets.only(left: width / 100),
                    child: arg != null ? arg == "Reservation" ? Container():Text(
                      "Step ${appoinmentController.stepperCounter.value + 1}",
                      style: TextStyle(
                          fontFamily: AppText.montserratSemiBold,
                          fontSize: width / 23),
                    ) : Text(
                      "Step ${appoinmentController.stepperCounter.value + 1}",
                      style: TextStyle(
                          fontFamily: AppText.montserratSemiBold,
                          fontSize: width / 23),
                    ),
                  );
                }),
                SizedBox(
                  height: height / 80,
                ),
                Row(
                  children: List.generate(
                      arg != null ? arg == "Reservation" ? 0 : 5 : 5,
                      (index) => GestureDetector(
                            onTap: () {
                              appoinmentController.stepperCounter.value = index;
                            },
                            child: Obx(() {
                              return Container(
                                width: width / 6.4,
                                height: height / 150,
                                margin: EdgeInsets.symmetric(
                                    horizontal: width / 80),
                                decoration: BoxDecoration(
                                    color: index ==
                                            appoinmentController
                                                .stepperCounter.value
                                        ? AppColors.blackColor
                                        : Colors.grey,
                                    borderRadius:
                                        BorderRadius.circular(width / 20)),
                              );
                            }),
                          )),
                ),
                SizedBox(
                  height: height / 50,
                ),
                Obx(() {
                  return Column(
                    children: [
                      appoinmentController.stepperCounter.value == 0
                          ? AppoinmentFirstStep()
                          : appoinmentController.stepperCounter.value == 1
                              ? AppoinmentSecondStep()
                              : appoinmentController.stepperCounter.value == 2
                                  ? AppoinmentThirdStep()
                                  : appoinmentController.stepperCounter.value ==
                                          3
                                      ? AppoinmentFourthStep()
                                      : appoinmentController
                                                  .stepperCounter.value ==
                                              4
                                          ? AppoinmentFifthStep()
                                          : AppoinmentFirstStep(),
                    ],
                  );
                })
              ],
            )),
      ),
    );
  }
}
