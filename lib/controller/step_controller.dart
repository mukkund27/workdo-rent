import 'package:get/get.dart';

class AppoinmentController extends GetxController {
  RxInt stepperCounter = 0.obs;
  RxBool isSwitchKitchen = false.obs;
  RxBool isSwitchInterior = false.obs;
  RxBool firstCondition = false.obs;
  RxBool secondCondition = false.obs;
  RxBool thirdCondition = false.obs;

  RxInt step4Selected = 0.obs;
  RxInt step1Selected = 0.obs;
  RxInt step5Selected = 0.obs;

  RxInt selectIdType = 0.obs;

  List<String> idTypeList = ["Driver's license", "Passport", "Identity card"];
}
