import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rentworkdo/components/app_constant.dart';
import 'package:rentworkdo/components/colors.dart';
import 'package:rentworkdo/components/images.dart';
import 'package:rentworkdo/components/string.dart';
import 'package:rentworkdo/controller/filter_controller.dart';
import 'package:rentworkdo/view/home/search_place.dart';
import 'package:rentworkdo/widget/app_bar.dart';

class FiltersScreen2 extends StatelessWidget {
  FiltersScreen2({Key? key}) : super(key: key);

  final filterController = Get.put(FilterController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
          title: "Filters",
        ),
      ),

      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: width / 30),
        child: SingleChildScrollView(
          child: Column(crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: height / 50),
              Container(
                height: height / 12,
                decoration: BoxDecoration(
                  color: AppColors.whiteColor,
                  borderRadius: BorderRadius.circular(width / 30),
                  border: Border.all(color: AppColors.blackColor),
                ),
                child: Row(crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(width: width / 30,),
                    Image.asset(AppImage.signsDirection, height: height / 30),
                    SizedBox(width: width / 30),
                    Column(mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [

                        Text(
                          "This is a work trip",
                          style: TextStyle(color: AppColors.blackColor,
                              fontSize: width / 28,
                              fontFamily: AppText.montserratMedium),
                        ),
                      ],
                    ),
                    const Spacer(),
                    Transform.scale(
                      scale: 0.65,
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            border: Border.all(color: AppColors.boxBorder)),
                        child: CupertinoSwitch(
                          activeColor: CupertinoColors.white,
                          trackColor: AppColors.whiteColor,
                          thumbColor: CupertinoColors.black,
                          value: filterController.isSwitchKitchen,
                          onChanged: (value) {
                            filterController.isSwitchKitchen = value;
                          },
                        ),
                      ),
                    ),
                    SizedBox(width: width / 50,),
                  ],
                ),
              ),
              SizedBox(height: height / 35),
              Text("Price range", style: TextStyle(
                  fontFamily: AppText.montserratSemiBold,
                  fontSize: height / 60),),
              SizedBox(height: height / 80),
             Obx(() => Center(
                 child: Row(
                   mainAxisAlignment: MainAxisAlignment.center,
                   children: [
                     Text(
                       "\$${filterController.startValue.value.round()} ",
                       style: TextStyle(
                           fontFamily: AppText.montserratBold, fontSize: height / 13),),
                     Text(
                       "- \$${filterController.endValue.value.round()}",
                       style: TextStyle(
                           fontFamily: AppText.montserratBold, fontSize: height / 13),),
                   ],
                 )),),

              SizedBox(height: height / 80),
              Center(child: Text("The average nightly price is \$76",
                style: TextStyle(fontFamily: AppText.montserratMedium,
                    fontSize: height / 80,
                    color: AppColors.greyColor),),),
              SizedBox(height: height / 80),
             Obx(() =>  SliderTheme(data: SliderTheme.of(context).copyWith(
               activeTrackColor: Colors.blue,
               inactiveTrackColor: Colors.blue,
               trackShape: const RectangularSliderTrackShape(),
               trackHeight: 1.0,
               thumbColor: Colors.blueAccent,
               // thumbShape: RoundSliderThumbShape(enabledThumbRadius: 12.0),
               overlayColor: Colors.red.withAlpha(32),
               overlayShape: const RoundSliderOverlayShape(overlayRadius: 28.0),
             ), child: RangeSlider(
             values: RangeValues(
                 filterController.startValue.value,
                 filterController.endValue.value),
               max: 100,
               min: 0.0,
               divisions: 4,
               activeColor: AppColors.blackColor,
               inactiveColor: AppColors.ticksBgColor,
               onChanged: (RangeValues values) {
                 // filterController.currentRangeValues = values;
                 filterController.startValue.value = values.start;
                 filterController.endValue.value = values.end;
               },
             ),),),
              SizedBox(height: height / 80),
              const Divider(thickness: 1),
              SizedBox(height: height / 70),
              Text("You need to know", style: TextStyle(
                  fontFamily: AppText.montserratSemiBold,
                  fontSize: height / 60),),
              SizedBox(height: height / 70),
              SizedBox(
                height: height/5.5,
                child: GridView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: 4,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      childAspectRatio: height / 420,
                      crossAxisCount: 3),
                  itemBuilder: (BuildContext context, int index) {
                    return Obx(() {
                      return Padding(
                        padding: const EdgeInsets.all(6.5),
                        child: GestureDetector(
                          onTap: () {
                            filterController.needSelect.value = index;
                          },
                          child: Container(

                            decoration: BoxDecoration(
                                color: filterController.needSelect.value == index
                                    ? AppColors.blackColor
                                    : Colors.transparent,
                                border: Border.all(
                                  color: filterController.needSelect.value == index? AppColors.whiteColor:AppColors.buttonBorderColor

                                ),
                                borderRadius: BorderRadius.circular(8)
                            ),
                            child: Center(
                              child: Text(filterController.needList[index], style: TextStyle(
                                  color: filterController.needSelect.value == index? AppColors.whiteColor:AppColors.blackColor,
                                  fontFamily: AppText.montserratSemiBold,
                                  fontSize: height / 70),),
                            ),
                          ),
                        ),
                      );
                    });
                  },
                ),
              ),
              SizedBox(
                width: 500,
                child: Column(
                  children: [
                    ListView.builder(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      padding: EdgeInsets.zero,
                      controller:
                      filterController.scrollController,
                      itemCount: 4,
                      itemBuilder: (BuildContext context, int index) =>

                          filterController.buildExpansionTile(index),
                    ),
                  ],
                ),
              ),
              ...List.generate(
                3,
                    (index) => GestureDetector(onTap: () {
                  filterController.selectIdType.value = index;
                }, child: Obx(() {
                  return Container(
                    height: height / 17,
                    width: width / 1,
                    padding: EdgeInsets.symmetric(horizontal: width / 26),
                    margin: EdgeInsets.symmetric(vertical: height / 100),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        border: Border.all(
                            color: filterController
                                .selectIdType.value ==
                                index
                                ? AppColors.blackColor
                                : AppColors.boxBorder)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          filterController.idTypeList[index],
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
                            child: filterController
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
              SizedBox(height: height / 70),
              SizedBox(
                width: 500,
                child: Column(
                  children: [
                    ListView.builder(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      padding: EdgeInsets.zero,
                      controller:
                      filterController.scrollController,
                      itemCount: 1,
                      itemBuilder: (BuildContext context, int index) =>

                          filterController.hotLanguageExpansionTile(index),
                    ),
                  ],
                ),
              ),
              SizedBox(height: height / 70),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    height: height / 18,
                    // width: width / 3,
                    padding: EdgeInsets.symmetric(horizontal: width/30),
                    decoration: BoxDecoration(
                        color: AppColors.whiteColor,
                        borderRadius: BorderRadius.circular(7),
                        border: Border.all(color: AppColors.blackColor)),
                    child: Center(
                      child: Text(
                        AppText.clearAll,
                        style: TextStyle(
                            fontFamily: AppText.montserratSemiBold,
                            color: AppColors.blackColor,
                            fontSize: width / 25),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: (){
                      Get.to(SearchMorePlace());
                    },
                    child: Container(
                      height: height / 18,
                      // width: width / 2.5,
                      padding: EdgeInsets.symmetric(horizontal: width/20),
                      decoration: BoxDecoration(
                          color: AppColors.blackColor,
                          borderRadius: BorderRadius.circular(7)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            "Show 300+ stays",
                            style: TextStyle(
                                fontFamily: AppText.montserratSemiBold,
                                color: AppColors.whiteColor,
                                fontSize: width / 25),
                          ),
                          SizedBox(width: width / 80),
                          Image.asset(AppIcon.arrowRightSmall,
                              scale: height / 200)
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: height / 40),
            ],
          ),
        ),
      ),
    );
  }

}
