import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rentworkdo/components/app_constant.dart';
import 'package:rentworkdo/components/colors.dart';
import 'package:rentworkdo/components/images.dart';
import 'package:rentworkdo/components/string.dart';
import 'package:rentworkdo/controller/abouteprofile_controller.dart';
import 'package:rentworkdo/widget/showmorereviewbutton.dart';

import '../home/show_place_screen.dart';

class AboutProfile extends StatefulWidget {
  const AboutProfile({Key? key}) : super(key: key);

  @override
  State<AboutProfile> createState() => _AboutProfileState();
}

class _AboutProfileState extends State<AboutProfile> {
  final abouteProfileController = Get.put(AbouteController());

  bool viewAll = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  height: height / 3.5,
                  color: AppColors.blackColor,
                  padding: EdgeInsets.only(
                      left: width / 15, top: height / 18, right: width / 15),
                  child: Align(
                    alignment: Alignment.topCenter,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        GestureDetector(
                          onTap: () {
                            Get.back();
                          },
                          child: Container(
                            height: height / 20,
                            width: width / 8,
                            decoration: BoxDecoration(
                              color: AppColors.whiteColor,
                              borderRadius: BorderRadius.circular(width / 80),
                            ),
                            child: Image.asset(AppIcon.arrowLeftSmall,
                                color: AppColors.blackColor,
                                scale: width / 300),
                          ),
                        ),
                        Text(
                          "About Profile",
                          style: TextStyle(
                            fontSize: height / 45,
                            fontFamily: AppText.montserratBold,
                            color: AppColors.whiteColor,
                          ),
                        ),
                        GestureDetector(
                          onTap: () {},
                          child: Container(
                            height: height / 20,
                            width: width / 8,
                            decoration: BoxDecoration(
                                color: AppColors.whiteColor,
                                borderRadius:
                                    BorderRadius.circular(width / 80)),
                            child:
                                Icon(Icons.more_vert_sharp, size: height / 35),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: height / 7),
                    Center(
                        child: Container(
                      // height: height/5,
                      decoration: const BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage(AppImage.abouteProfileAvtar))),
                      child: Column(
                        children: [
                          SizedBox(height: height / 6.3),
                          Padding(
                            padding:
                                EdgeInsets.symmetric(horizontal: width / 2.35),
                            child: Container(
                              height: height / 35,
                              decoration: BoxDecoration(
                                  color: AppColors.blackColor,
                                  borderRadius: BorderRadius.circular(3)),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(Icons.star,
                                      color: AppColors.ratingStar,
                                      size: height / 85),
                                  SizedBox(width: width / 100),
                                  Text(
                                    "4,5(24B)",
                                    style: TextStyle(
                                        color: AppColors.whiteColor,
                                        fontFamily: AppText.montserratSemiBold,
                                        fontSize: width / 55),
                                  )
                                ],
                              ),
                            ),
                          ),
                          SizedBox(height: height / 80),
                        ],
                      ),
                    )),
                    SizedBox(height: height / 80),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: width / 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Center(
                            child: Text(
                              "Johnatan Doe",
                              style: TextStyle(
                                  fontFamily: AppText.montserratSemiBold,
                                  color: AppColors.blackColor,
                                  fontSize: height / 30),
                            ),
                          ),
                          SizedBox(height: height / 80),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                height: height / 20,
                                width: width / 9.5,
                                decoration: BoxDecoration(
                                    color: AppColors.blackColor,
                                    shape: BoxShape.circle),
                                child: Image.asset(AppIcon.email,
                                    scale: height / 250),
                              ),
                              SizedBox(width: width / 50),
                              Container(
                                height: height / 20,
                                width: width / 9.5,
                                decoration: BoxDecoration(
                                    border:
                                        Border.all(color: AppColors.greyColor),
                                    shape: BoxShape.circle),
                                child: Image.asset(AppIcon.phone,
                                    scale: height / 250),
                              ),
                            ],
                          ),
                          SizedBox(height: height / 80),
                          const Divider(thickness: 1),
                          SizedBox(height: height / 50),
                          Text(
                            "About",
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
                          SizedBox(height: height / 50),
                          Row(
                            children: [
                              Text(
                                "Reviews",
                                style: TextStyle(
                                  fontSize: height / 60,
                                  fontFamily: AppText.montserratBold,
                                ),
                              ),
                              const Spacer(),
                              TextButton(
                                  onPressed: (){
                                     setState(() {
                                       viewAll = !viewAll;
                                     });
                                  },

                                  child:
                                Text(
                                  "View All",
                                  style: TextStyle(
                                      decoration: TextDecoration.underline,
                                      fontSize: height / 60,
                                      color: AppColors.blackColor,
                                      fontFamily: AppText.montserratSemiBold),
                                ),)
                            ],
                          ),
                          SizedBox(height: height / 50),
                          ...List.generate(1, (index) {
                            return Container(
                              height: height / 4.1,
                              width: width,
                              decoration: BoxDecoration(
                                  border:
                                      Border.all(color: AppColors.ticksBgColor),
                                  borderRadius: BorderRadius.circular(5)),
                              child: Padding(
                                padding: EdgeInsets.symmetric(
                                    horizontal: width / 25),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    SizedBox(height: height / 60),
                                    Row(
                                      children: [
                                        Text(
                                          "Best Hotel Ever!",
                                          style: TextStyle(
                                              fontFamily:
                                                  AppText.montserratSemiBold,
                                              color: AppColors.blackColor,
                                              fontSize: height / 55),
                                        ),
                                        const Spacer(),
                                        Container(
                                          height: height / 35,
                                          width: width / 5.5,
                                          decoration: BoxDecoration(
                                              color: AppColors.blackColor,
                                              borderRadius:
                                                  BorderRadius.circular(3)),
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
                                                  fontFamily: AppText
                                                      .montserratSemiBold,
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
                                                  fontFamily: AppText
                                                      .montserratSemiBold,
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
                          SizedBox(height: height / 50),
                          ShowMoreReviewButton(
                              onTap: () {}, boxColor: AppColors.blackColor),


                         SizedBox(height: height / 50),


                            viewAll == true   ?
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Divider(thickness: 1),
                                SizedBox(height: height / 50),
                                Text(
                                  "Jognatan’s Places",
                                  style: TextStyle(
                                      fontSize: height / 60,
                                      fontFamily: AppText.montserratBold),
                                ),
                                SizedBox(height: height / 50),
                                SingleChildScrollView(
                                  scrollDirection: Axis.horizontal,
                                  padding: EdgeInsets.zero,
                                  child: Row(
                                    children: List.generate(2, (index) {
                                      return Row(
                                        children: [
                                          GestureDetector(
                                            onTap: (){
                                              Get.to(const ShowPlaceScreen());
                                            },
                                            child: Container(
                                              margin: EdgeInsets.only(
                                                  left: index == 0 ? 0 : width / 50),
                                              decoration: BoxDecoration(
                                                  border: Border.all(
                                                      color: AppColors.ticksBgColor),
                                                  borderRadius:
                                                  BorderRadius.circular(7)),
                                              child: Column(
                                                crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                                children: [
                                                  Padding(
                                                    padding: const EdgeInsets.all(8.0),
                                                    child: Container(
                                                      height: height / 6,
                                                      width: width / 2.55,
                                                      decoration: const BoxDecoration(
                                                          image: DecorationImage(
                                                              image: AssetImage(AppImage
                                                                  .searchPlace2),
                                                              fit: BoxFit.fill)),
                                                      child: Padding(
                                                        padding: EdgeInsets.only(
                                                            left: width / 50,
                                                            top: height / 100),
                                                        child: Row(
                                                          crossAxisAlignment:
                                                          CrossAxisAlignment.start,
                                                          children: [
                                                            Container(
                                                              height: height / 35,
                                                              decoration: BoxDecoration(
                                                                  color: AppColors
                                                                      .blackColor,
                                                                  borderRadius:
                                                                  BorderRadius
                                                                      .circular(5)),
                                                              child: Padding(
                                                                padding: EdgeInsets
                                                                    .symmetric(
                                                                    horizontal:
                                                                    width / 40),
                                                                child: Row(
                                                                  mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .center,
                                                                  children: [
                                                                    Icon(Icons.star,
                                                                        color: AppColors
                                                                            .ratingStar,
                                                                        size: height /
                                                                            70),
                                                                    SizedBox(
                                                                        width: width /
                                                                            100),
                                                                    Text(
                                                                      "4,5",
                                                                      style: TextStyle(
                                                                          color: AppColors
                                                                              .whiteColor,
                                                                          fontFamily:
                                                                          AppText
                                                                              .montserratSemiBold,
                                                                          fontSize:
                                                                          width /
                                                                              40),
                                                                    )
                                                                  ],
                                                                ),
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                  SizedBox(height: height / 250),
                                                  Padding(
                                                    padding: EdgeInsets.symmetric(
                                                        horizontal: width / 50),
                                                    child: Text(
                                                      "Modern House",
                                                      style: TextStyle(
                                                          fontFamily: AppText
                                                              .montserratSemiBold,
                                                          color: AppColors.blackColor,
                                                          fontSize: height / 60),
                                                    ),
                                                  ),
                                                  SizedBox(height: height / 250),
                                                  Padding(
                                                    padding: EdgeInsets.symmetric(
                                                        horizontal: width / 50),
                                                    child: Text(
                                                      "Gualala, CA 9442",
                                                      style: TextStyle(
                                                          fontFamily: AppText
                                                              .montserratSemiBold,
                                                          color: AppColors.greyColor,
                                                          fontSize: height / 80),
                                                    ),
                                                  ),
                                                  SizedBox(height: height / 70),
                                                  Padding(
                                                    padding: EdgeInsets.symmetric(
                                                        horizontal: width / 50),
                                                    child: Row(
                                                      children: [
                                                        Text(
                                                          "\$550",
                                                          style: TextStyle(
                                                              fontFamily: AppText
                                                                  .montserratSemiBold,
                                                              color:
                                                              AppColors.blackColor,
                                                              fontSize: height / 40),
                                                        ),
                                                        SizedBox(width: width / 70),
                                                        Text(
                                                          "/night",
                                                          style: TextStyle(
                                                              fontFamily: AppText
                                                                  .montserratSemiBold,
                                                              color:
                                                              AppColors.greyColor,
                                                              fontSize: height / 70),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                  SizedBox(height: height / 80),
                                                  Padding(
                                                    padding: EdgeInsets.symmetric(
                                                        horizontal: width / 50),
                                                    child: Divider(
                                                        thickness: 1.5,
                                                        color: AppColors.ticksBgColor),
                                                  ),
                                                  SizedBox(height: height / 250),
                                                  Row(
                                                    children: [
                                                      SizedBox(width: width / 50),
                                                      Image.asset(AppIcon.featureBed,
                                                          height: height / 80),
                                                      SizedBox(width: width / 130),
                                                      Text(
                                                        "5",
                                                        style: TextStyle(
                                                            fontSize: height / 90,
                                                            fontFamily: AppText
                                                                .montserratMedium,
                                                            color:
                                                            AppColors.blackColor),
                                                      ),
                                                      SizedBox(width: width / 50),
                                                      Image.asset(AppIcon.users,
                                                          height: height / 80),
                                                      SizedBox(width: width / 130),
                                                      Text(
                                                        "Up to 6",
                                                        style: TextStyle(
                                                            fontSize: height / 90,
                                                            fontFamily: AppText
                                                                .montserratMedium,
                                                            color:
                                                            AppColors.blackColor),
                                                      ),
                                                      SizedBox(width: width / 50),
                                                      Image.asset(AppIcon.houses,
                                                          height: height / 80),
                                                      SizedBox(width: width / 130),
                                                      Text(
                                                        "3,800 sqft",
                                                        style: TextStyle(
                                                            fontSize: height / 90,
                                                            fontFamily: AppText
                                                                .montserratMedium,
                                                            color:
                                                            AppColors.blackColor),
                                                      )
                                                    ],
                                                  ),
                                                  SizedBox(height: height / 70),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ],
                                      );
                                    }),
                                  ),
                                ),
                                SizedBox(height: height / 50),
                              ],
                            )

                            : Container()



                        ],
                      ),
                    ),
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
