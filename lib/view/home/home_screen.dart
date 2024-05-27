import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rentworkdo/components/app_constant.dart';
import 'package:rentworkdo/components/colors.dart';
import 'package:rentworkdo/components/images.dart';
import 'package:rentworkdo/components/string.dart';
import 'package:rentworkdo/controller/homepage_controller.dart';
import 'package:rentworkdo/view/home/search_listing_screen.dart';
import 'package:rentworkdo/view/home/search_place.dart';
import 'package:rentworkdo/view/home/show_place_screen.dart';
import 'package:rentworkdo/widget/bottom_guest_select.dart';
import 'package:rentworkdo/widget/date_box_to.dart';
import 'package:rentworkdo/widget/guest_box.dart';
import '../../widget/bottom_date_picker.dart';
import '../../widget/common_appbar.dart';
import '../../widget/common_featureplace_list.dart';
import '../../widget/common_list_tile.dart';
import '../../widget/common_search.dart';
import '../../widget/showmoreplace_button.dart';
import 'bottom_date_picker_two.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  final controller = Get.put(HomePageController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.whiteColor,
      appBar: PreferredSize(
        preferredSize: Get.size / 12,
        child: CommonAppBar(AppText.whatDoYou, AppText.relateTo),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: width / 30),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: height / 60,
              ),
              Text(
                AppText.selectStay,
                style: TextStyle(
                    fontSize: width / 25,
                    fontFamily: AppText.montserratSemiBold,
                    color: AppColors.blackColor),
              ),
              SizedBox(
                height: height / 60,
              ),
              CommonSearch(
                hinttxt: AppText.searchHint,
                onTap: () {
                  Get.to(SearchListingScreen());
                },
              ),
              SizedBox(
                height: height / 40,
              ),
              Text(
                AppText.selectActivity,
                style: TextStyle(
                    fontSize: width / 25,
                    fontFamily: AppText.montserratSemiBold,
                    color: AppColors.blackColor),
              ),
              Obx(() {
                return SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: List.generate(
                      4,
                      (index) => GestureDetector(
                        onTap: () {
                          controller.selectActivity.value = index;
                        },
                        child: Container(
                          height: height / 8.5,
                          width: width / 4,
                          margin: EdgeInsets.symmetric(
                              horizontal: width / 100, vertical: width / 30),
                          decoration: BoxDecoration(
                              border: Border.all(
                                  color:
                                      controller.selectActivity.value == index
                                          ? AppColors.blackColor
                                          : AppColors.boxBorder),
                              borderRadius: BorderRadius.circular(width / 50)),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset(
                                controller.activityList[index]["Icon"],
                                scale: width / 400,
                                color: controller.selectActivity.value == index
                                    ? AppColors.blackColor
                                    : AppColors.boxBorder,
                              ),
                              SizedBox(
                                height: height / 100,
                              ),
                              Text(
                                controller.activityList[index]["Name"],
                                style: TextStyle(
                                    fontSize: width / 30,
                                    fontFamily: AppText.montserratSemiBold,
                                    color:
                                        index == controller.selectActivity.value
                                            ? AppColors.blackColor
                                            : AppColors.boxBorder),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                );
              }),
              SizedBox(height: height / 80),
              Row(
                children: [
                  Text(
                    AppText.dates,
                    style: TextStyle(
                        fontSize: width / 25,
                        fontFamily: AppText.montserratSemiBold,
                        color: AppColors.blackColor),
                  ),
                  const Spacer(),
                  Text(
                    AppText.guests,
                    style: TextStyle(
                        fontSize: width / 25,
                        fontFamily: AppText.montserratSemiBold,
                        color: AppColors.blackColor),
                  ),
                  SizedBox(
                    width: width / 11,
                  )
                ],
              ),
              SizedBox(
                height: height / 60,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                      onTap: () {
                        Get.bottomSheet(BottomDatePicker(),
                            barrierColor:
                                Colors.grey.shade200.withOpacity(0.8));
                      },
                      child: DateBox(AppText.datefrom)),
                  GestureDetector(
                      onTap: () {
                        Get.bottomSheet(BottomDatePickerTwo(),
                            barrierColor:
                                Colors.grey.shade200.withOpacity(0.8));
                      },
                      child: DateBox(AppText.dateto)),
                  GestureDetector(
                    onTap: () {
                      Get.bottomSheet(SelectGuest(),
                          barrierColor: Colors.grey.shade200.withOpacity(0.8));
                    },
                    child: const GuestBox(),
                  )
                ],
              ),
              SizedBox(height: height / 40),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    AppText.optionals,
                    style: TextStyle(
                        fontSize: width / 25,
                        fontFamily: AppText.montserratSemiBold,
                        color: AppColors.blackColor),
                  ),
                  Icon(
                    Icons.keyboard_arrow_down,
                    color: AppColors.blackColor,
                    size: width / 19,
                  )
                ],
              ),
              SizedBox(
                height: height / 80,
              ),
              ComListTile(
                textColor: AppColors.blackColor,
                leading:
                    Image.asset(AppIcon.kitchen, color: AppColors.blackColor),
                title: AppText.kitchenAppliances,
                subtitle: AppText.kitchenAppliancesSubtitle,
                trailing: Obx(
                  () => Transform.scale(
                    scale: 0.65,
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          border: Border.all(color: AppColors.boxBorder)),
                      child: CupertinoSwitch(
                        activeColor: CupertinoColors.white,
                        trackColor: AppColors.whiteColor,
                        thumbColor: CupertinoColors.black,
                        value: controller.isSwitchKitchen.value,
                        onChanged: (value) {
                          controller.isSwitchKitchen.value = value;
                        },
                      ),
                    ),
                  ),
                ),
                backgroundColor: AppColors.whiteColor,
                borderColor: AppColors.blackColor,
              ),
              SizedBox(
                height: height / 60,
              ),
              ComListTile(
                textColor: AppColors.whiteColor,
                leading:
                    Image.asset(AppIcon.kitchen, color: AppColors.whiteColor),
                title: AppText.modernInterior,
                subtitle: AppText.modernInteriorSubtitle,
                trailing: Obx(
                  () => Transform.scale(
                    scale: 0.65,
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: CupertinoSwitch(
                        activeColor: CupertinoColors.white,
                        trackColor: AppColors.whiteColor,
                        thumbColor: CupertinoColors.black,
                        value: controller.isSwitchInterior.value,
                        onChanged: (value) {
                          controller.isSwitchInterior.value = value;
                        },
                      ),
                    ),
                  ),
                ),
                backgroundColor: AppColors.blackColor,
                borderColor: AppColors.blackColor,
              ),
              SizedBox(height: height / 60),
              GestureDetector(
                onTap: () {
                  Get.to(SearchListingScreen());
                },
                child: Container(
                  height: height / 14,
                  decoration: BoxDecoration(
                      color: AppColors.blackColor,
                      borderRadius: BorderRadius.circular(width / 30)),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(width: width / 15),
                      Text(
                        AppText.searchPlaces,
                        style: TextStyle(
                            fontFamily: AppText.montserratSemiBold,
                            color: AppColors.whiteColor,
                            fontSize: Get.width / 25),
                      ),
                      SizedBox(width: width / 32),
                      Image.asset(AppIcon.arrowRightSmall, scale: height / 200)
                    ],
                  ),
                ),
              ),
              SizedBox(height: height / 40),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    AppText.featuredPlaces,
                    style: TextStyle(
                        fontSize: width / 25,
                        fontFamily: AppText.montserratSemiBold,
                        color: AppColors.blackColor),
                  ),
                  Text(
                    AppText.viewAll,
                    style: TextStyle(
                        decoration: TextDecoration.underline,
                        fontSize: width / 25,
                        fontFamily: AppText.montserratSemiBold,
                        color: AppColors.blackColor),
                  ),
                ],
              ),
              SizedBox(height: height / 60),
              CommonFeaturePlace(),
              SizedBox(height: height / 60),
              ShowMorePlacesButton(
                onTap: () {
                  Get.to(SearchMorePlace());
                },
                boxColor: AppColors.blackColor,
              ),
              SizedBox(height: height / 30),
              Stack(
                children: [
                  Container(
                    height: height / 2.8,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        image: const DecorationImage(
                            image: AssetImage(
                              AppImage.premiumImage,
                            ),
                            fit: BoxFit.fill),
                        borderRadius: BorderRadius.circular(width / 30)),
                  ),
                  Container(
                    height: height / 2.8,
                    width: double.infinity,
                    decoration: const BoxDecoration(
                      gradient: LinearGradient(
                          colors: [Colors.white70, Colors.transparent],
                          begin: Alignment.bottomCenter,
                          end: Alignment.topCenter),
                    ),
                  ),
                  Column(
                    children: [
                      SizedBox(
                        height: height / 7,
                      ),
                      Align(
                        alignment: Alignment.center,
                        child: Text(
                          AppText.premiumBooking,
                          style: TextStyle(
                              fontFamily: AppText.montserratBold,
                              color: AppColors.whiteColor,
                              fontSize: width / 12),
                        ),
                      ),
                      Text(
                        AppText.intro,
                        style: TextStyle(
                            fontFamily: AppText.montserratMedium,
                            color: AppColors.introTextColor,
                            fontSize: width / 28),
                      ),
                      Text(
                        AppText.intro1,
                        style: TextStyle(
                            fontFamily: AppText.montserratMedium,
                            color: AppColors.introTextColor,
                            fontSize: width / 28),
                      ),
                      GestureDetector(
                        onTap: () {
                          Get.to(const ShowPlaceScreen());
                        },
                        child: Container(
                          height: height / 15,
                          margin: EdgeInsets.all(height / 40),
                          decoration: BoxDecoration(
                              color: AppColors.whiteColor,
                              borderRadius: BorderRadius.circular(width / 50)),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              SizedBox(width: width / 15),
                              Text(
                                AppText.showMorePlace,
                                style: TextStyle(
                                    fontFamily: AppText.montserratSemiBold,
                                    color: AppColors.blackColor,
                                    fontSize: Get.width / 25),
                              ),
                              SizedBox(width: width / 32),
                              Image.asset(
                                AppIcon.arrowRightSmall,
                                scale: height / 200,
                                color: Colors.black,
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
              SizedBox(height: height / 20),
            ],
          ),
        ),
      ),
    );
  }
}
