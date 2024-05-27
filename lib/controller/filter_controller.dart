import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rentworkdo/components/app_constant.dart';
import 'package:rentworkdo/components/colors.dart';

import '../components/string.dart';

class FilterController extends GetxController {
  bool isSwitchKitchen = false;
  RangeValues currentRangeValues =  const RangeValues(40, 80);
  RxDouble startValue = 10.0.obs;
  RxDouble endValue = 25.0.obs;

  RxInt needSelect = 0.obs;
  RxInt selectIdType = 0.obs;
  List needList = ["Anything", "Entire place", "Entire place", "Entire place"];

  List<String> idTypeList = [
    "Suitable for events",
    "Pets allowed",
    "Smoking allowed",
  ];

  final ScrollController scrollController = ScrollController();
  void _scrollToSelectedContent(
      bool isExpanded, double previousOffset, int index, GlobalKey myKey) {
    final keyContext = myKey.currentContext;

    if (keyContext != null) {
      // make sure that your widget is visible
      final box = keyContext.findRenderObject() as RenderBox;
      scrollController.animateTo(
          isExpanded ? (box.size.height * index) : previousOffset,
          duration: const Duration(milliseconds: 500),
          curve: Curves.linear);
    }
  }

  ExpansionTile buildExpansionTile(int index) {
    final GlobalKey expansionTileKey = GlobalKey();
    double? previousOffset;

    return ExpansionTile(
      collapsedIconColor: AppColors.blackColor,
      iconColor: AppColors.blackColor,
      tilePadding: EdgeInsets.zero,
      key: expansionTileKey,
      onExpansionChanged: (isExpanded) {
        if (isExpanded) previousOffset = scrollController.offset;
        _scrollToSelectedContent(
            isExpanded, previousOffset!, index, expansionTileKey);
      },
      title: Text(
        index == 0
            ? 'Accessibility'
            : index == 1
                ? 'Facilities'
                : index == 2
                    ? 'Property type'
                    : 'Unique stays',
        style: TextStyle(
            color: AppColors.blackColor,
            fontFamily: AppText.montserratSemiBold,
            fontSize: height / 50),
      ),
      children: [
        index == 0
            ? Text(
                "Welcome to New York City, travelers! I'm excited to share my newly renovated Upper West Side apartment with you! My place is close…",
                style: TextStyle(
                  fontFamily: AppText.montserratMedium,
                  color: AppColors.greyColor,
                  fontSize: height / 50,
                ),
              )
            : index == 1
                ? Text(
                    "Welcome to New York City, travelers! I'm excited to share my newly renovated Upper West Side apartment with you! My place is close…",
                    style: TextStyle(
                      fontFamily: AppText.montserratMedium,
                      color: AppColors.greyColor,
                      fontSize: height / 50,
                    ),
                  )
                : index == 2
                    ? Text(
                        "Explain what it means to pick up after yourself. Tell your child to put her dishes in the dishwasher when she's done eating. Or explain that you expect your children to pick up their toys before they get out new toys. This rule enhances household safety and cleanliness and develops good habits for when your children will go on to live independently.",
                        style: TextStyle(
                          fontFamily: AppText.montserratMedium,
                          color: AppColors.greyColor,
                          fontSize: height / 50,
                        ),
                      )
                    : Text(
                        "Explain what it means to pick up after yourself. Tell your child to put her dishes in the dishwasher when she's done eating. Or explain that you expect your children to pick up their toys before they get out new toys. This rule enhances household safety and cleanliness and develops good habits for when your children will go on to live independently.",
                        style: TextStyle(
                          fontFamily: AppText.montserratMedium,
                          color: AppColors.greyColor,
                          fontSize: height / 50,
                        ),
                      ),
        SizedBox(height: height / 50)
      ],
    );
  }

  ExpansionTile hotLanguageExpansionTile(int index) {
    final GlobalKey expansionTileKey = GlobalKey();
    double? previousOffset;

    return ExpansionTile(
      collapsedIconColor: AppColors.blackColor,
      iconColor: AppColors.blackColor,
      tilePadding: EdgeInsets.zero,
      key: expansionTileKey,
      onExpansionChanged: (isExpanded) {
        if (isExpanded) previousOffset = scrollController.offset;
        _scrollToSelectedContent(
            isExpanded, previousOffset!, index, expansionTileKey);
      },
      title: Text(
        "Host language",
        style: TextStyle(
            color: AppColors.blackColor,
            fontFamily: AppText.montserratSemiBold,
            fontSize: height / 50),
      ),
      children: [
        Text(
          "Welcome to New York City, travelers! I'm excited to share my newly renovated Upper West Side apartment with you! My place is close…",
          style: TextStyle(
            fontFamily: AppText.montserratMedium,
            color: AppColors.greyColor,
            fontSize: height / 50,
          ),
        ),
        SizedBox(height: height / 50)
      ],
    );
  }
}
