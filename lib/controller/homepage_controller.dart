import 'package:get/get.dart';
import 'package:rentworkdo/components/images.dart';
import '../components/string.dart';

class HomePageController extends GetxController {
  RxBool isSwitchKitchen = false.obs;
  RxBool isSwitchInterior = false.obs;
  RxInt selectActivity = 0.obs;
  RxInt selectFilter = 0.obs;
  RxInt childrenCounter = 0.obs;
  RxInt adultCounter = 0.obs;
  RxInt seniorCitizenCounter = 0.obs;
  RxInt stepperCounter = 0.obs;

  List filter = [
    "Anything",
    "Houses",
    "Offices",
    "More",
  ];
  List<Map<String, dynamic>> activityList = [
    {"Icon": AppIcon.rentRoom, "Name": AppText.rentRoom},
    {"Icon": AppIcon.houses, "Name": AppText.houses},
    {"Icon": AppIcon.offices, "Name": AppText.offices},
    {"Icon": AppIcon.factory, "Name": AppText.factory},
  ];
}
