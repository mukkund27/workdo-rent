import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rentworkdo/components/app_constant.dart';
import 'package:rentworkdo/components/colors.dart';
import 'package:rentworkdo/components/images.dart';
import 'package:rentworkdo/components/string.dart';
import 'package:rentworkdo/config/approutes.dart';
import 'package:rentworkdo/controller/splacedetails_controller.dart';
import 'package:rentworkdo/view/profile/aboutprofile_screen.dart';
import 'package:rentworkdo/widget/common_featureplace_list.dart';

class SplaceDetailScreen extends StatelessWidget {
  SplaceDetailScreen({Key? key}) : super(key: key);
static const routeName = "/SplaceDetailScreen";
  final splaceDetailsController = Get.put(SplaceDetailsController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Material(
        child: GestureDetector(
          onTap: () {
            Get.toNamed(AppRoute.appoinmentScreen);
          },
          child: Padding(
            padding: const EdgeInsets.only(bottom: 10, left: 10, right: 10),
            child: Container(
              height: height / 16,
              width: width,
              decoration: BoxDecoration(
                color: AppColors.blackColor,
                  // gradient: LinearGradient(
                  //   begin: Alignment.bottomCenter,
                  //   end: Alignment.topCenter,
                  //   colors: [
                  //     AppColors.greyColor.withOpacity(0.8),
                  //     AppColors.blackColor,
                  //   ],
                  // ),
                  borderRadius: BorderRadius.circular(10)),
              child: Row(
                children: [
                  SizedBox(width: width / 30),
                  Text(
                    "Price: \$520 /night",
                    style: TextStyle(
                        color: AppColors.whiteColor,
                        fontSize: height / 60,
                        fontFamily: AppText.montserratSemiBold),
                  ),
                  const Spacer(),
                  Container(
                    height: height / 25,
                    width: width / 3.5,
                    decoration: BoxDecoration(
                        color: AppColors.whiteColor,
                        borderRadius: BorderRadius.circular(5)),
                    child: Row(
                      children: [
                        SizedBox(width: width / 40),
                        Text(
                          "Book now",

                          style: TextStyle(
                              color: AppColors.blackColor,
                              fontFamily: AppText.montserratSemiBold,
                              fontSize: height / 70),
                        ),
                        const Spacer(),
                        Image.asset(AppIcon.arrowRightSmall,
                            color: AppColors.blackColor, height: height / 40),
                        SizedBox(width: width / 40),
                      ],
                    ),
                  ),
                  SizedBox(width: width / 30),
                ],
              ),
            ),
          ),
        ),
      ),
      body: Obx(() {
        return SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                children: [
                  SizedBox(
                    height: height / 2.1,
                    child: PageView(
                      physics: const ClampingScrollPhysics(),
                      controller: splaceDetailsController.pageController,
                      onPageChanged: (int page) {
                        splaceDetailsController.currentPage.value = page;
                      },
                      children: <Widget>[
                        Container(
                          height: height / 2.1,
                          decoration: const BoxDecoration(
                            borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(30),
                                bottomRight: Radius.circular(30)),
                            image: DecorationImage(
                              image: AssetImage(AppImage.villageDream),
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                        Container(
                          height: height / 2.1,
                          decoration: const BoxDecoration(
                            borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(30),
                                bottomRight: Radius.circular(30)),
                            image: DecorationImage(
                              image: AssetImage(AppImage.villageDream),
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                        Container(
                          height: height / 2.1,
                          decoration: const BoxDecoration(
                            borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(30),
                                bottomRight: Radius.circular(30)),
                            image: DecorationImage(
                              image: AssetImage(AppImage.villageDream),
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                        Container(
                          height: height / 2.1,
                          decoration: const BoxDecoration(
                            borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(30),
                                bottomRight: Radius.circular(30)),
                            image: DecorationImage(
                              image: AssetImage(AppImage.villageDream),
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Column(
                    children: [
                      SizedBox(height: height / 30),
                      Container(
                        height: height / 7.5,
                        color: Colors.transparent,
                        padding: EdgeInsets.only(
                            left: width / 15, right: width / 15),
                        child: Row(
                          children: [
                            GestureDetector(
                              onTap: () {
                                Get.back();
                              },
                              child: Container(
                                height: height / 18,
                                width: height / 14,
                                decoration: BoxDecoration(
                                  color: AppColors.whiteColor,
                                  borderRadius:
                                      BorderRadius.circular(width / 80),
                                ),
                                child: Image.asset(AppIcon.arrowLeftSmall,
                                    color: AppColors.blackColor,
                                    scale: width / 400),
                              ),
                            ),
                            const Spacer(),
                            GestureDetector(
                              onTap: () {},
                              child: Container(
                                height: height / 18,
                                width: height / 14,
                                decoration: BoxDecoration(
                                    color: AppColors.whiteColor,
                                    borderRadius:
                                        BorderRadius.circular(width / 80)),
                                child: Image.asset(AppIcon.bookmarksCheck,
                                    color: AppColors.blackColor,
                                    scale: width / 110),
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                  Column(
                    children: [
                      SizedBox(height: height / 2.7),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          SizedBox(
                            height: height / 17,
                            width: width,
                            child: ListView.builder(
                              padding: EdgeInsets.zero,
                              itemCount: 1,
                              itemBuilder: (context, index) {
                                return Padding(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: Get.width / 6),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Container(
                                        height: height / 17,
                                        width: width / 7.15,
                                        decoration: BoxDecoration(
                                            image: const DecorationImage(
                                                image: AssetImage(
                                                    AppImage.searchPlace1),
                                                fit: BoxFit.fill),
                                            borderRadius:
                                                BorderRadius.circular(8)),
                                      ),
                                      Container(
                                        height: height / 17,
                                        width: width / 7.15,
                                        decoration: BoxDecoration(
                                            image: const DecorationImage(
                                                image: AssetImage(
                                                    AppImage.searchPlace2),
                                                fit: BoxFit.fill),
                                            borderRadius:
                                                BorderRadius.circular(8)),
                                      ),
                                      Container(
                                        height: height / 17,
                                        width: width / 7.15,
                                        decoration: BoxDecoration(
                                            image: const DecorationImage(
                                                image: AssetImage(
                                                    AppImage.searchPlace3),
                                                fit: BoxFit.fill),
                                            borderRadius:
                                                BorderRadius.circular(8)),
                                      ),
                                      Container(
                                        height: height / 17,
                                        width: width / 7.15,
                                        decoration: BoxDecoration(
                                            image: const DecorationImage(
                                                image: AssetImage(
                                                    AppImage.searchPlace4),
                                                fit: BoxFit.fill),
                                            borderRadius:
                                                BorderRadius.circular(8)),
                                      ),
                                    ],
                                  ),
                                );
                              },
                            ),
                          )
                        ],
                      ),
                      SizedBox(height: height / 50),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: splaceDetailsController.buildPageIndicator(),
                      ),
                    ],
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: width / 14),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: height / 45),
                    Row(
                      children: [
                        Container(
                          height: height / 35,
                          width: width / 5.5,
                          decoration: BoxDecoration(
                              color: AppColors.blackColor,
                              borderRadius: BorderRadius.circular(3)),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(Icons.star,
                                  color: AppColors.ratingStar,
                                  size: height / 80),
                              SizedBox(width: width / 100),
                              Text(
                                "4,5(24B)",
                                style: TextStyle(
                                    color: AppColors.whiteColor,
                                    fontFamily: AppText.montserratSemiBold,
                                    fontSize: width / 50),
                              )
                            ],
                          ),
                        ),
                        SizedBox(width: width / 40),
                        Container(
                          height: height / 35,
                          width: width / 8,
                          decoration: BoxDecoration(
                              color: AppColors.ticksBgColor,
                              borderRadius: BorderRadius.circular(3)),
                          child: Center(
                            child: Text(
                              "Top 5",
                              style: TextStyle(
                                  color: AppColors.blackColor,
                                  fontFamily: AppText.montserratSemiBold,
                                  fontSize: width / 38),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: height / 50),
                    Text(
                      "Perfect Room, East\nVillage Dream",
                      style: TextStyle(
                          fontSize: height / 35,
                          fontFamily: AppText.montserratBold),
                    ),
                    SizedBox(height: height / 50),
                    Container(
                      height: height / 25,
                      width: width / 1.3,
                      decoration: BoxDecoration(
                          color: AppColors.ticksBgColor,
                          borderRadius: BorderRadius.circular(5)),
                      child: Row(
                        children: [
                          SizedBox(width: width / 38),
                          Image.asset(AppIcon.featureBed,
                              color: AppColors.blackColor),
                          SizedBox(width: width / 72),
                          Text(
                            "5",
                            style: TextStyle(
                                fontFamily: AppText.montserratMedium,
                                fontSize: height / 58),
                          ),
                          SizedBox(width: width / 23),
                          Image.asset(AppIcon.bathRoomIcon,
                              color: AppColors.blackColor, height: height / 53),
                          SizedBox(width: width / 68),
                          Text(
                            "2",
                            style: TextStyle(
                                fontFamily: AppText.montserratMedium,
                                fontSize: height / 58),
                          ),
                          SizedBox(width: width / 23),
                          Image.asset(AppIcon.users,
                              color: AppColors.blackColor),
                          SizedBox(width: width / 68),
                          Text(
                            "Up to 6",
                            style: TextStyle(
                                fontFamily: AppText.montserratMedium,
                                fontSize: height / 80),
                          ),
                          SizedBox(width: width / 23),
                          Image.asset(AppIcon.houses,
                              color: AppColors.blackColor),
                          SizedBox(width: width / 68),
                          Text(
                            "3,800 sqft",
                            style: TextStyle(
                                fontFamily: AppText.montserratMedium,
                                fontSize: height / 58),
                          )
                        ],
                      ),
                    ),
                    SizedBox(height: height / 50),
                    Text(
                      "Details",
                      style: TextStyle(
                          fontSize: height / 60,
                          fontFamily: AppText.montserratBold),
                    ),
                    SizedBox(height: height / 60),
                    Text(
                      "Welcome to New York City, travelers! I'm excited to share my newly renovated Upper West Side apartment with you! My place is close…",
                      style: TextStyle(
                          fontSize: height / 60,
                          fontFamily: AppText.montserratMedium,
                          color: AppColors.greyColor),
                    ),
                    SizedBox(height: height / 50),
                    const Divider(thickness: 1),
                    GestureDetector(
                      onTap: (){
                        Get.to(const AboutProfile());
                      },
                      child: Row(
                        children: [
                          Image.asset(AppImage.johnaTan, height: height / 17),
                          SizedBox(width: width / 25),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Johnatan Doe",
                                style: TextStyle(
                                    fontFamily: AppText.montserratSemiBold,
                                    color: AppColors.blackColor,
                                    fontSize: height / 60),
                              ),
                              Text(
                                "Owner",
                                style: TextStyle(
                                    fontFamily: AppText.montserratMedium,
                                    color: AppColors.greyColor,
                                    fontSize: height / 60),
                              ),
                            ],
                          ),
                          const Spacer(),
                          Container(
                            height: height / 20,
                            width: width / 9.5,
                            decoration: BoxDecoration(
                                color: AppColors.blackColor,
                                shape: BoxShape.circle),
                            child:
                                Image.asset(AppIcon.email, scale: height / 250),
                          ),
                          SizedBox(width: width / 50),
                          Container(
                            height: height / 20,
                            width: width / 9.5,
                            decoration: BoxDecoration(
                                border: Border.all(color: AppColors.greyColor),
                                shape: BoxShape.circle),
                            child:
                                Image.asset(AppIcon.phone, scale: height / 250),
                          ),
                        ],
                      ),
                    ),
                    const Divider(thickness: 1),
                    SizedBox(
                      width: 500,
                      child: Column(
                        children: [
                          ListView.builder(
                            shrinkWrap: true,
                            physics: const NeverScrollableScrollPhysics(),
                            padding: EdgeInsets.zero,
                            controller:
                                splaceDetailsController.scrollController,
                            itemCount: 3,
                            itemBuilder: (BuildContext context, int index) =>
                                splaceDetailsController
                                    .buildExpansionTile(index),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: height / 60),
                    Text(
                      "Sleeping arrangements",
                      style: TextStyle(
                          fontSize: height / 60,
                          fontFamily: AppText.montserratSemiBold),
                    ),
                    SizedBox(height: height / 60),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Expanded(
                          child: Container(
                            height: height / 6.3,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(7),
                                border:
                                    Border.all(color: AppColors.ticksBgColor)),
                            child: Padding(
                              padding:
                                  EdgeInsets.symmetric(horizontal: width / 20),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(top: height / 60),
                                    child: Image.asset(AppIcon.bed2,
                                        color: AppColors.blackColor,
                                        height: height / 25),
                                  ),
                                  SizedBox(height: height / 70),
                                  Text(
                                    "Room 1",
                                    style: TextStyle(
                                        fontSize: height / 50,
                                        fontFamily: AppText.montserratSemiBold),
                                  ),
                                  SizedBox(height: height / 70),
                                  Text(
                                    "1 double bed",
                                    style: TextStyle(
                                        fontSize: height / 50,
                                        fontFamily: AppText.montserratMedium,
                                        color: AppColors.greyColor),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                        SizedBox(width: width / 35),
                        Expanded(
                          child: Container(
                            height: height / 6.3,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(7),
                                border:
                                    Border.all(color: AppColors.ticksBgColor)),
                            child: Padding(
                              padding:
                                  EdgeInsets.symmetric(horizontal: width / 20),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(top: height / 60),
                                    child: Row(
                                      children: [
                                        Image.asset(AppIcon.bed2,
                                            color: AppColors.blackColor,
                                            height: height / 25),
                                        SizedBox(width: width / 35),
                                        Image.asset(AppIcon.bed2,
                                            color: AppColors.blackColor,
                                            height: height / 25),
                                      ],
                                    ),
                                  ),
                                  SizedBox(height: height / 70),
                                  Text(
                                    "Room 1",
                                    style: TextStyle(
                                        fontSize: height / 50,
                                        fontFamily: AppText.montserratSemiBold),
                                  ),
                                  SizedBox(height: height / 70),
                                  Text(
                                    "1 double bed",
                                    style: TextStyle(
                                        fontSize: height / 50,
                                        fontFamily: AppText.montserratMedium,
                                        color: AppColors.greyColor),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: height / 30),
                    const Divider(thickness: 1),
                    SizedBox(height: height / 40),
                    Row(
                      children: [
                        Text(
                          "Reviews",
                          style: TextStyle(
                              fontSize: height / 60,
                              fontFamily: AppText.montserratBold),
                        ),
                        const Spacer(),
                        Text(
                          "View All",
                          style: TextStyle(
                              decoration: TextDecoration.underline,
                              fontSize: height / 60,
                              fontFamily: AppText.montserratSemiBold),
                        ),
                      ],
                    ),
                    SizedBox(height: height / 40),
                    ...List.generate(1, (index) {
                      return Container(
                        height: height / 4.1,
                        width: width,
                        decoration: BoxDecoration(
                            border: Border.all(color: AppColors.ticksBgColor),
                            borderRadius: BorderRadius.circular(5)),
                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: width / 25),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(height: height / 60),
                              Row(
                                children: [
                                  Text(
                                    "Best Hotel Ever!",
                                    style: TextStyle(
                                        fontFamily: AppText.montserratSemiBold,
                                        color: AppColors.blackColor,
                                        fontSize: height / 55),
                                  ),
                                  const Spacer(),
                                  Container(
                                    height: height / 35,
                                    width: width / 5.5,
                                    decoration: BoxDecoration(
                                        color: AppColors.blackColor,
                                        borderRadius: BorderRadius.circular(3)),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Icon(Icons.star,
                                            color: AppColors.ratingStar,
                                            size: height / 80),
                                        SizedBox(width: width / 100),
                                        Text(
                                          "4,5(248)",
                                          style: TextStyle(
                                            color: AppColors.whiteColor,
                                            fontFamily:
                                                AppText.montserratSemiBold,
                                            fontSize: width / 50,
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(height: height / 60),
                              Text(
                                "Welcome to New York City, travelers! I'm excited to share my newly renovated Upper West Side apartment with you! My place is close…",
                                style: TextStyle(
                                    color: AppColors.greyColor,
                                    fontFamily: AppText.montserratMedium,
                                    fontSize: height / 60),
                              ),
                              SizedBox(height: height / 50),
                              Row(
                                children: [
                                  Image.asset(AppImage.johnaTan,
                                      height: height / 17),
                                  SizedBox(width: width / 25),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Johnatan Doe",
                                        style: TextStyle(
                                            fontFamily:
                                                AppText.montserratSemiBold,
                                            color: AppColors.blackColor,
                                            fontSize: height / 60),
                                      ),
                                      Text(
                                        "Owner",
                                        style: TextStyle(
                                            fontFamily:
                                                AppText.montserratMedium,
                                            color: AppColors.greyColor,
                                            fontSize: height / 60),
                                      ),
                                    ],
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                      );
                    }),
                    SizedBox(height: height / 40),
                    ...List.generate(1, (index) {
                      return Container(
                        height: height / 3.1,
                        width: width,
                        decoration: BoxDecoration(
                            border: Border.all(color: AppColors.ticksBgColor),
                            borderRadius: BorderRadius.circular(5)),
                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: width / 25),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(height: height / 60),
                              Row(
                                children: [
                                  Text(
                                    "Best Hotel Ever!",
                                    style: TextStyle(
                                        fontFamily: AppText.montserratSemiBold,
                                        color: AppColors.blackColor,
                                        fontSize: height / 55),
                                  ),
                                  const Spacer(),
                                  Container(
                                    height: height / 35,
                                    width: width / 5.5,
                                    decoration: BoxDecoration(
                                        color: AppColors.blackColor,
                                        borderRadius: BorderRadius.circular(3)),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Icon(Icons.star,
                                            color: AppColors.ratingStar,
                                            size: height / 80),
                                        SizedBox(width: width / 100),
                                        Text(
                                          "4,5(248)",
                                          style: TextStyle(
                                            color: AppColors.whiteColor,
                                            fontFamily:
                                                AppText.montserratSemiBold,
                                            fontSize: width / 50,
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(height: height / 60),
                              Text(
                                "Welcome to New York City, travelers! I'm excited to share my newly renovated Upper West Side apartment with you! My place is close…",
                                style: TextStyle(
                                    color: AppColors.greyColor,
                                    fontFamily: AppText.montserratMedium,
                                    fontSize: height / 60),
                              ),
                              SizedBox(height: height / 50),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  SizedBox(
                                    height: height / 17,
                                    width: width / 1.3,
                                    child: ListView.builder(
                                      padding: EdgeInsets.zero,
                                      itemCount: 1,
                                      itemBuilder: (context, index) {
                                        return Row(
                                          children: [
                                            Container(
                                              height: height / 17,
                                              width: width / 7,
                                              decoration: BoxDecoration(
                                                  image: const DecorationImage(
                                                      image: AssetImage(AppImage
                                                          .searchPlace1),
                                                      fit: BoxFit.fill),
                                                  borderRadius:
                                                      BorderRadius.circular(8)),
                                            ),
                                            SizedBox(width: width / 40),
                                            Container(
                                              height: height / 17,
                                              width: width / 7,
                                              decoration: BoxDecoration(
                                                  image: const DecorationImage(
                                                      image: AssetImage(AppImage
                                                          .searchPlace2),
                                                      fit: BoxFit.fill),
                                                  borderRadius:
                                                      BorderRadius.circular(8)),
                                            ),
                                            SizedBox(width: width / 40),
                                            Container(
                                              height: height / 17,
                                              width: width / 7,
                                              decoration: BoxDecoration(
                                                  image: const DecorationImage(
                                                      image: AssetImage(AppImage
                                                          .searchPlace3),
                                                      fit: BoxFit.fill),
                                                  borderRadius:
                                                      BorderRadius.circular(8)),
                                            ),
                                            SizedBox(width: width / 40),
                                            Container(
                                              height: height / 17,
                                              width: width / 7,
                                              decoration: BoxDecoration(
                                                  image: const DecorationImage(
                                                      image: AssetImage(AppImage
                                                          .searchPlace4),
                                                      fit: BoxFit.fill),
                                                  borderRadius:
                                                      BorderRadius.circular(8)),
                                            ),
                                          ],
                                        );
                                      },
                                    ),
                                  )
                                ],
                              ),
                              SizedBox(height: height / 50),
                              Row(
                                children: [
                                  Image.asset(AppImage.johnaTan,
                                      height: height / 17),
                                  SizedBox(width: width / 25),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Johnatan Doe",
                                        style: TextStyle(
                                            fontFamily:
                                                AppText.montserratSemiBold,
                                            color: AppColors.blackColor,
                                            fontSize: height / 60),
                                      ),
                                      Text(
                                        "Owner",
                                        style: TextStyle(
                                            fontFamily:
                                                AppText.montserratMedium,
                                            color: AppColors.greyColor,
                                            fontSize: height / 60),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                      );
                    }),
                    SizedBox(height: height / 40),
                    GestureDetector(
                      onTap: (){},
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
                             "Show more reviews ",
                              style: TextStyle(
                                  fontFamily: AppText.montserratSemiBold,
                                  color: AppColors.whiteColor,
                                  fontSize: Get.width / 25),
                            ),
                            SizedBox(width: width / 32),
                            Image.asset(AppIcon.arrowDownSmall,
                                scale: height / 300)
                          ],
                        ),
                      ),
                    ),
                    // ShowMoreReviewButton(
                    //     onTap: () {}, boxColor: AppColors.blackColor),
                    SizedBox(height: height / 40),
                    Row(
                      children: [
                        Text(
                          "Related places",
                          style: TextStyle(
                              fontSize: height / 60,
                              fontFamily: AppText.montserratBold),
                        ),
                        const Spacer(),
                        Text(
                          "View All",
                          style: TextStyle(
                              decoration: TextDecoration.underline,
                              fontSize: height / 60,
                              fontFamily: AppText.montserratSemiBold),
                        ),
                      ],
                    ),
                    SizedBox(height: height / 70),
                    CommonFeaturePlace(),
                    SizedBox(height: height / 70),
                  ],
                ),
              ),
            ],
          ),
        );
      }),
    );
  }
}
