import 'package:get/get.dart';

class CancellationSurveyScreenController extends GetxController{

  RxInt selectIdType=0.obs;
  List<String> idTypeList = ["Change of dates or destination",
                             "Made bookings for the same dates -\ncanceled the ones I don’t need",
                             "Found a different  accommodation option",
                             "Personal reasons / Trip called off"];

}