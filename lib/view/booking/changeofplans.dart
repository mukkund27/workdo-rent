import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rentworkdo/components/app_constant.dart';
import 'package:rentworkdo/components/colors.dart';
import 'package:rentworkdo/components/images.dart';
import 'package:rentworkdo/components/string.dart';
import 'package:rentworkdo/config/approutes.dart';
import 'package:rentworkdo/controller/changeofplants.dart';
import 'package:rentworkdo/widget/app_bar.dart';

class ChangeOfPlans extends StatelessWidget {
  ChangeOfPlans({Key? key}) : super(key: key);

  final changeOfPlantsController = Get.put(ChangeOfPlantsController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton.extended(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        backgroundColor: AppColors.blackColor,
        isExtended: true,
        onPressed: () {
          Get.toNamed(AppRoute.cancellationSurveyScreen);
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
          onTapTrailing: () {},
          isLeading: true,
          onTapLeading: () {
            Get.back();
          },
          leadingIcon: Image.asset(
            AppIcon.arrowLeftSmall,
            height: height / 100,
          ),
          title: "Change of plans?",
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: width / 30),
        child: Column(
          children: [
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
                            width: width / 7.3,
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
                                  size: width / 30,
                                ),
                                Text(
                                  AppText.rate,
                                  style: TextStyle(
                                      fontFamily: AppText.montserratMedium,
                                      fontSize: width / 35,
                                      color: AppColors.whiteColor),
                                )
                              ],
                            ),
                          )),
                      Positioned(
                          top: height / 100,
                          left: height / 5.3,
                          child: Container(
                            height: height / 30,
                            width: width / 2.8,
                            decoration: BoxDecoration(
                                color: AppColors.blackColor,
                                borderRadius:
                                    BorderRadius.circular(width / 100)),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                CircleAvatar(
                                  radius: height / 120,
                                  backgroundColor: AppColors.whiteColor,
                                  child: Icon(
                                    Icons.check_rounded,
                                    color: AppColors.blackColor,
                                    size: width / 30,
                                  ),
                                ),
                                SizedBox(width: width / 50),
                                Text(
                                  "Free cancelation",
                                  style: TextStyle(
                                      fontFamily: AppText.montserratMedium,
                                      fontSize: width / 38,
                                      color: AppColors.whiteColor),
                                )
                              ],
                            ),
                          )),
                    ],
                  ),
                  SizedBox(height: height / 80),
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
            SizedBox(height: height / 80),
            SizedBox(
              width: 500,
              child: Column(
                children: [
                  ListView.builder(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    padding: EdgeInsets.zero,
                    controller: changeOfPlantsController.scrollController,
                    itemCount: 1,
                    itemBuilder: (BuildContext context, int index) =>
                        changeOfPlantsController.buildExpansionTile(index),
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
