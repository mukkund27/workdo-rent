import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../components/app_constant.dart';
import '../../components/colors.dart';
import '../../components/images.dart';
import '../../components/string.dart';
import '../../controller/homepage_controller.dart';
import '../../widget/app_bar.dart';
import '../../widget/common_search.dart';

class FilterScreen extends StatelessWidget {
  FilterScreen({super.key});

  final controller = Get.put(HomePageController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.whiteColor,
      appBar: PreferredSize(
        preferredSize: Get.size / 10,
        child: Appbar(
          onTapTrailing: () {
            // Get.toNamed(AppRoute.filterScreen);
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
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: width / 30),
          child: Column(
            children: [
              SizedBox(
                height: height / 50,
              ),
               CommonSearch(
                hinttxt: 'Search for...',
              ),
              SizedBox(
                height: height / 50,
              ),
              Obx(() {
                return Row(
                  children: List.generate(4, (index) {
                    if (index != 3) {
                      return GestureDetector(
                        onTap: () {
                          controller.selectFilter.value = index;
                        },
                        child: Container(
                          height: height / 17,
                          margin: EdgeInsets.all(width / 100),
                          width: width / 5.2,
                          decoration: BoxDecoration(
                              color: controller.selectFilter.value == index
                                  ? AppColors.blackColor
                                  : AppColors.whiteColor,
                              border: Border.all(color: AppColors.boxBorder),
                              borderRadius: BorderRadius.circular(width / 50)),
                          child: Center(
                            child: Text(
                              controller.filter[index].toString(),
                              style: TextStyle(
                                  fontFamily: AppText.montserratSemiBold,
                                  color: controller.selectFilter.value == index
                                      ? AppColors.whiteColor
                                      : AppColors.blackColor,
                                  fontSize: width / 32),
                            ),
                          ),
                        ),
                      );
                    } else {
                      return Container(
                        height: height / 17,
                        margin: EdgeInsets.only(left: width / 10),
                        width: width / 5.2,
                        decoration: BoxDecoration(
                            color: AppColors.whiteColor,
                            border: Border.all(color: AppColors.boxBorder),
                            borderRadius: BorderRadius.circular(width / 50)),
                        child: Center(
                          child: Text(
                            controller.filter[index].toString(),
                            style: TextStyle(
                                fontFamily: AppText.montserratSemiBold,
                                color: AppColors.boxBorder,
                                fontSize: width / 32),
                          ),
                        ),
                      );
                    }
                  }),
                );
              }),
              SizedBox(
                height: height / 10,
              ),
              Center(
                child: Image.asset(
                  AppImage.filterIllustrator,
                  height: height / 2.8,
                  width: width / 0.5,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
