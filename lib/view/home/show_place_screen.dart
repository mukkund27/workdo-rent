import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rentworkdo/view/home/search_place.dart';

import '../../components/app_constant.dart';
import '../../components/colors.dart';
import '../../components/images.dart';
import '../../components/string.dart';
import '../../widget/common_featureplace_list.dart';
import '../../widget/showmoreplace_button.dart';

class ShowPlaceScreen extends StatelessWidget {
  const ShowPlaceScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: PreferredSize(
      //   preferredSize: Get.size / 10,
      //   child: const Appbar(
      //     title: "Featured places",),
      // ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: width / 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 60,),
              Text("Featured places", style: TextStyle(
                  fontFamily: AppText.montserratBold,
                  fontSize: width / 20,
                  color: AppColors.blackColor),),
              const SizedBox(height: 10,),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "Find ",
                    style: TextStyle(
                        fontSize: width / 25,
                        fontFamily: AppText.montserratSemiBold,
                        color: AppColors.introTextColor),
                  ),
                  Text(
                    "86 places",
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
                onTap: (){
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
                        image:  const DecorationImage(
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
                      Container(
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
