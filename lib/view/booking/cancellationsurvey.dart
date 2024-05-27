import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rentworkdo/components/colors.dart';
import 'package:rentworkdo/components/images.dart';
import 'package:rentworkdo/components/string.dart';
import 'package:rentworkdo/controller/cancellationsurvey_controller.dart';
import 'package:rentworkdo/widget/app_bar.dart';
import 'package:rentworkdo/widget/cancellation_bottomsheet.dart';
import '../../components/app_constant.dart';

class CancellationSurveyScreen extends StatelessWidget {
  CancellationSurveyScreen({Key? key}) : super(key: key);

  final cancellationSurveyScreenController =
      Get.put(CancellationSurveyScreenController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton.extended(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        backgroundColor: AppColors.blackColor,
        isExtended: true,
        onPressed: () {
          Get.bottomSheet(const CancellationBottomSheet(),barrierColor: Colors.grey.shade200.withOpacity(0.8));
        },
        label: SizedBox(
          width: width / 1.35,
          child: Center(
            child: Text(
              'Cancel',
              style: TextStyle(
                  fontSize: height / 50,
                  fontFamily: AppText.montserratSemiBold),
            ),
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      backgroundColor: AppColors.whiteColor,
      appBar: PreferredSize(
        preferredSize: Get.size / 10,
        child: Appbar(
          onTapTrailing: () {

            },
          isLeading: true,
          onTapLeading: () {
            Get.back();
          },
          leadingIcon: Image.asset(
            AppIcon.arrowLeftSmall,
            height: height / 100,
          ),
          title: "Cancellation survey",
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: width / 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: height / 30),
            Text(
              "Tell us your reason for canceling",
              style: TextStyle(
                  fontSize: height / 55,
                  fontFamily: AppText.montserratSemiBold),
            ),
            SizedBox(height: height / 40),
            ...List.generate(
              4,
              (index) => GestureDetector(onTap: () {
                cancellationSurveyScreenController.selectIdType.value = index;
              }, child: Obx(() {
                return Container(
                  height: height / 17,
                  width: width / 1,
                  padding: EdgeInsets.symmetric(horizontal: width / 26),
                  margin: EdgeInsets.symmetric(vertical: height / 100),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(
                          color: cancellationSurveyScreenController
                                      .selectIdType.value ==
                                  index
                              ? AppColors.blackColor
                              : AppColors.boxBorder)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        cancellationSurveyScreenController.idTypeList[index],
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
                          child: cancellationSurveyScreenController
                                      .selectIdType.value ==
                                  index
                              ? CircleAvatar(
                                  backgroundColor: AppColors.blackColor,
                                )
                              : const SizedBox())
                    ],
                  ),
                );
              })),
            ),
            SizedBox(height: height / 40),
            Container(
              height: height / 12,
              width: width,
              decoration: BoxDecoration(
                  color: AppColors.ticksBgColor,
                  borderRadius: BorderRadius.circular(8)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: width/18),
                    child: Text(
                      "Your booking won’t be canceled until you\nanswer this survey question.",
                      style: TextStyle(
                          color: AppColors.greyColor,
                          fontFamily: AppText.montserratMedium,
                      fontSize: height/70
                      ),
                    ),
                  ),
                ],
              ),
            ),

          ],
        ),
      ),
    );
  }
}
