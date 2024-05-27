import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rentworkdo/components/colors.dart';
import 'package:rentworkdo/components/images.dart';
import 'package:rentworkdo/controller/searchmoreplace_controller.dart';
import 'package:rentworkdo/view/booking/filtersscreen.dart';
import 'package:rentworkdo/view/home/filter_screen.dart';
import 'package:rentworkdo/view/home/splacedetails_screen.dart';
import 'package:rentworkdo/widget/common_search.dart';
import 'package:rentworkdo/widget/guest_box.dart';
import 'package:rentworkdo/widget/showmoreplace_button.dart';
import '../../components/app_constant.dart';
import '../../components/string.dart';
import '../../widget/app_bar.dart';
import '../../widget/bottom_date_picker.dart';
import '../../widget/bottom_guest_select.dart';
import '../../widget/date_box_to.dart';

class SearchMorePlace extends StatelessWidget {
  SearchMorePlace({super.key});

  final searchMorePlaceController = Get.put(SearchMorePlaceController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.whiteColor,
      appBar: PreferredSize(
        preferredSize: Get.size / 10,
        child: Appbar(
          onTapTrailing: () {
            Get.to(FiltersScreen2());
          },
          title: "Search",

          isTrailing: true,
          trailingIcon: Image.asset(
            AppIcon.horizontalSlider,
            scale: width / 300,
            color: AppColors.blackColor,
          ),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: width / 30),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              SizedBox(
                height: height / 300,
              ),
               GestureDetector(
                 onTap: (){
                   Get.to(FilterScreen());
                 },
                 child: CommonSearch(
                  hinttxt: 'New York',
                   onTap: (){
                     Get.to(FilterScreen());
                   },

              ),
               ),
              SizedBox(height: height / 30),
              Row(
                children: [
                  Text(
                    AppText.dates,
                    style: TextStyle(
                        fontSize: width / 24,
                        fontFamily: AppText.montserratSemiBold,
                        color: AppColors.blackColor),
                  ),
                  const Spacer(),
                  Text(
                    AppText.guests,
                    style: TextStyle(
                        fontSize: width / 24,
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
                        Get.bottomSheet(
                            BottomDatePicker(),
                        );
                        // Get.bottomSheet(BottomDatePicker(),
                        //     barrierColor:
                        //         Colors.grey.shade200.withOpacity(0.8));
                      },
                      child: DateBox(AppText.datefrom)),
                  GestureDetector(
                      onTap: () {
                        Get.bottomSheet(
                          BottomDatePicker(),
                        );
                        // Get.bottomSheet(BottomDatePicker(),
                        //     barrierColor:
                        //         Colors.grey.shade200.withOpacity(0.8));
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
              SizedBox(height: height / 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "200+ places to book:",
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
              SizedBox(height: height / 80),
              Column(
                children: List.generate(
                    3,

                    (index) => GestureDetector(
                      onTap: (){
                        Get.to( SplaceDetailScreen(),);
                      },
                      child: Container(
                            height: height / 2.9,
                            padding: EdgeInsets.all(height / 100),
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
                                      searchMorePlaceController
                                          .featureplaceList[index]["Image"],
                                      height: height / 5,
                                      width: double.infinity,
                                      fit: BoxFit.fill,
                                    ),
                                    Positioned(
                                        top: height / 100,
                                        left: height / 100,
                                        child: Row(
                                          children: [
                                            Container(
                                              height: height / 30,
                                              width: width / 7.5,
                                              decoration: BoxDecoration(
                                                  color: AppColors.blackColor,
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          width / 100)),
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  Icon(
                                                    Icons.star,
                                                    color: AppColors.ratingStar,
                                                    size: width / 25,
                                                  ),
                                                  Text(
                                                    AppText.rate,
                                                    style: TextStyle(
                                                        fontFamily: AppText
                                                            .montserratMedium,
                                                        fontSize: width / 33,
                                                        color:
                                                            AppColors.whiteColor),
                                                  )
                                                ],
                                              ),
                                            ),
                                            SizedBox(
                                              width: width / 50,
                                            ),
                                            index == 0
                                                ? Container(
                                                    height: height / 30,
                                                    width: width / 7.5,
                                                    decoration: BoxDecoration(
                                                        color:
                                                            AppColors.blackColor,
                                                        borderRadius:
                                                            BorderRadius.circular(
                                                                width / 100)),
                                                    child: Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .center,
                                                      children: [
                                                        Text(
                                                          "Top 5",
                                                          style: TextStyle(
                                                              fontFamily: AppText
                                                                  .montserratMedium,
                                                              fontSize:
                                                                  width / 33,
                                                              color: AppColors
                                                                  .whiteColor),
                                                        )
                                                      ],
                                                    ),
                                                  )
                                                : const SizedBox(),
                                          ],
                                        ))
                                  ],
                                ),
                                SizedBox(
                                  height: height / 80,
                                ),
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Modern House",
                                          style: TextStyle(
                                              fontSize: width / 24,
                                              fontFamily:
                                                  AppText.montserratSemiBold,
                                              color: AppColors.blackColor),
                                        ),
                                        Text(
                                          "Gualala, CA 9442",
                                          style: TextStyle(
                                              fontSize: width / 30,
                                              fontFamily:
                                                  AppText.montserratMedium,
                                              color: AppColors
                                                  .featuredPlaceSubtitle),
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
                                Divider(
                                  color: AppColors.dividerColor,
                                  thickness: width / 250,
                                ),
                                SizedBox(
                                  height: width / 80,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    SizedBox(
                                      width: width / 80,
                                    ),
                                    Image.asset(
                                      AppIcon.featureBed,
                                      scale: width / 400,
                                      color: AppColors.blackColor,
                                    ),
                                    SizedBox(
                                      width: width / 60,
                                    ),
                                    Text(
                                      "5",
                                      style: TextStyle(
                                          fontFamily: AppText.montserratSemiBold,
                                          color: AppColors.blackColor,
                                          fontSize: width / 26),
                                    ),
                                    const Spacer(),
                                    Image.asset(
                                      AppIcon.bathtub,
                                      scale: width / 400,
                                      color: AppColors.blackColor,
                                    ),
                                    SizedBox(
                                      width: width / 60,
                                    ),
                                    Text(
                                      "2",
                                      style: TextStyle(
                                          fontFamily: AppText.montserratSemiBold,
                                          color: AppColors.blackColor,
                                          fontSize: width / 26),
                                    ),
                                    const Spacer(),
                                    Image.asset(
                                      AppIcon.users,
                                      scale: width / 400,
                                      color: AppColors.blackColor,
                                    ),
                                    SizedBox(
                                      width: width / 60,
                                    ),
                                    Text(
                                      "Up to 6",
                                      style: TextStyle(
                                          fontFamily: AppText.montserratSemiBold,
                                          color: AppColors.blackColor,
                                          fontSize: width / 26),
                                    ),
                                    const Spacer(),
                                    Image.asset(
                                      AppIcon.rentRoom,
                                      scale: width / 300,
                                      color: AppColors.blackColor,
                                    ),
                                    SizedBox(
                                      width: width / 60,
                                    ),
                                    Text(
                                      "3,800 sqft",
                                      style: TextStyle(
                                          fontFamily: AppText.montserratSemiBold,
                                          color: AppColors.blackColor,
                                          fontSize: width / 26),
                                    ),
                                    SizedBox(
                                      width: width / 10,
                                    )
                                  ],
                                )
                              ],
                            ),
                          ),
                    )),
              ),
              SizedBox(height: height / 100),
              ShowMorePlacesButton(
                boxColor: AppColors.blackColor,
                // boxGradient: LinearGradient(
                //     colors: [Colors.black54, Colors.grey.shade500],
                //     begin: Alignment.topCenter,
                //     end: Alignment.bottomCenter),
              ),
              SizedBox(height: height / 50),
            ],
          ),
        ),
      ),
    );
  }
}
