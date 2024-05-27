import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../components/colors.dart';
import '../../components/images.dart';
import '../../components/string.dart';
import '../utils/common_text_feild_one.dart';

class PasswordRecoveryScreen extends StatefulWidget {
  const PasswordRecoveryScreen({Key? key}) : super(key: key);
static const routeName = "/PasswordRecoveryScreen";
  @override
  State<PasswordRecoveryScreen> createState() => _PasswordRecoveryScreenState();
}

class _PasswordRecoveryScreenState extends State<PasswordRecoveryScreen> {

  bool isVisible = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.blackColor,
        body: SingleChildScrollView(
          child: Container(
            height: Get.height,
            width: double.infinity,
            decoration: BoxDecoration(
              color: AppColors.blackColor,
              image: const DecorationImage(
                image: AssetImage(AppImage.homeScreen2),
                fit: BoxFit.fill,

              ),
            ),
            child: Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [

                  Text("Password", style: TextStyle(
                      fontFamily: AppText.montserratBold,
                      color: AppColors.whiteColor,
                      fontSize: Get.height / 20.5),),
                  Text("Recovery",
                      style: TextStyle(
                          fontFamily: AppText.montserratBold,
                          color: AppColors.whiteColor,
                          fontSize: Get.height / 20.5)),
                  const SizedBox(
                    height: 15,
                  ),
                  Text("Enter your email to recovery your password",
                      style: TextStyle(
                      fontFamily: AppText.montserratMedium,
                      color: AppColors.introTextColor,
                      fontSize: 14)),
                  const SizedBox(height: 15,),
                  Text("Email:",
                      style: TextStyle(
                          fontFamily: AppText.montserratMedium,
                          color: AppColors.introTextColor,
                          fontSize: 14)),
                  const SizedBox(height: 15,),
                  SizedBox(
                    height: 48,
                    child: CommonTextField(
                      isSuffixIcon: true,
                      hintText: AppText.hintTextForEmail,
                      suffixIcon: GestureDetector(
                          onTap: () {
                          },
                          child: Padding(
                            padding: const EdgeInsets.only(top: 12,right: 6,bottom: 12),
                            child:  Image.asset(AppIcon.checkCircle),
                          )
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),

                  GestureDetector(
                    onTap: () {
                      // Get.offAllNamed(AppRoute.loginScreen);
                    },
                    child: Container(
                      height: Get.height / 18,
                      width: double.infinity,
                      decoration: BoxDecoration(
                          color: AppColors.whiteColor,
                          borderRadius: BorderRadius.circular(Get.width / 15)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          const SizedBox(width: 25,),
                          Text(
                            "Send email",
                            style: TextStyle(
                              fontSize: Get.width / 26,
                              fontFamily: AppText.montserratSemiBold,
                              color: AppColors.blackColor,
                            ),
                          ),
                          SizedBox(
                            width: Get.width / 50,
                          ),
                      ImageIcon(const AssetImage(AppIcon.sendArrow,),color:AppColors.blackColor ,),
                        ],
                      ),
                    ),
                  ),

                  const SizedBox(height: 30,),

                ],
              ),
            ),
          ),
        ));
  }
}
