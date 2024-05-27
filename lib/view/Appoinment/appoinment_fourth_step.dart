import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rentworkdo/controller/step_controller.dart';
import 'package:rentworkdo/view/Appoinment/select_id_type.dart';
import 'add_id_screen.dart';

class AppoinmentFourthStep extends StatelessWidget {
  AppoinmentFourthStep({super.key});
  final appoinmentController = Get.put(AppoinmentController());

  @override
  Widget build(BuildContext context) {
    appoinmentController.step4Selected.value = 0;
    return Obx(
      () {
        if (appoinmentController.step4Selected.value == 0) {
          return AddIdStep();
        } else {
          return SelectIDType();
        }
      },
    );
  }
}
