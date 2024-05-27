import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:rentworkdo/components/app_constant.dart';
import 'package:rentworkdo/components/images.dart';
import 'package:rentworkdo/components/string.dart';

import '../components/colors.dart';

class SplaceDetailsController extends GetxController {
  final RxInt numPages = 4.obs;
  final PageController pageController = PageController(initialPage: 0);
  RxInt currentPage = 0.obs;

  List<Widget> buildPageIndicator() {
    List<Widget> list = [];
    for (int i = 0; i < numPages.value; i++) {
      list.add(i == currentPage.value ? _indicator(true) : _indicator(false));
    }
    return list;
  }

  Widget _indicator(bool isActive) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 150),
      margin: const EdgeInsets.symmetric(horizontal: 8.0),
      height: height / 200,
      width: width / 7.4,
      decoration: BoxDecoration(
        color: isActive
            ? AppColors.whiteColor
            : AppColors.greyColor.withOpacity(0.9),
        borderRadius: const BorderRadius.all(Radius.circular(12)),
      ),
    );
  }

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

  static const CameraPosition _kGooglePlex = CameraPosition(
    target: LatLng(37.42796133580664, -122.085749655962),
    zoom: 14.4746,
  );
  final Completer<GoogleMapController> _controller =
      Completer<GoogleMapController>();

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
            ? 'Localization'
            : index == 1
                ? 'Amenities'
                : 'House Rules',
        style: TextStyle(
            color: AppColors.blackColor,
            fontFamily: AppText.montserratSemiBold,
            fontSize: height / 50),
      ),
      children: [
        index == 0
            ? SizedBox(
                height: height / 3,
                width: width,
                child: Column(
                  children: [
                    SizedBox(
                      height: height / 5,
                      width: width,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(8),
                        child: GoogleMap(
                          mapType: MapType.normal,
                          initialCameraPosition: _kGooglePlex,
                          onMapCreated: (GoogleMapController controller) {
                            _controller.complete(controller);
                          },
                        ),
                      ),
                    ),
                    SizedBox(height: height / 40),
                    Container(
                      height: height / 14,
                      decoration: BoxDecoration(
                          color: AppColors.blackColor,
                          borderRadius: BorderRadius.circular(width / 30)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Show on map",
                            style: TextStyle(
                                fontFamily: AppText.montserratSemiBold,
                                color: AppColors.whiteColor,
                                fontSize: width / 22),
                          ),
                          SizedBox(width: width / 32),
                          Image.asset(AppIcon.arrowRightSmall,
                              scale: height / 300)
                        ],
                      ),
                    ),
                  ],
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
}
