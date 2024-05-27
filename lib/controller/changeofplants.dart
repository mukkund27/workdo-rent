import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rentworkdo/components/colors.dart';
import 'package:rentworkdo/components/string.dart';

import '../components/app_constant.dart';

class ChangeOfPlantsController extends GetxController {
  final ScrollController scrollController = ScrollController();

  void _scrollToSelectedContent(
      bool isExpanded, double previousOffset, int index, GlobalKey myKey) {}
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
        "You need to know",
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
