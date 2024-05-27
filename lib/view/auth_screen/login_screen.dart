
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rentworkdo/view/auth_screen/password_recovery_screen.dart';
import 'package:rentworkdo/view/utils/common_text_feild_one.dart';
import '../../bottom_navigationbar.dart';
import '../../components/colors.dart';
import '../../components/images.dart';
import '../../components/string.dart';
import 'ragister_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);
  static const routeName = "/loginScreen";

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

  bool isVisible = true;
  bool timer = false;
TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    controller.text = "john@1234";

    return  Scaffold(
      backgroundColor: Colors.black,

        body: SingleChildScrollView(

          child: Container(
            height: Get.height,
           width: double.infinity,
           decoration: const BoxDecoration(
             color: Colors.black,
            image: DecorationImage(
            image: AssetImage(AppImage.homeScreen2),
            fit: BoxFit.fill,
            // colorFilter: ColorFilter.mode(
            //     Colors.black.withOpacity(0.9), BlendMode.dstATop),
          ),
      ),
      child: Padding(
          padding: const EdgeInsets.only(left: 20, right: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(AppText.welcomeBack,
                  style: TextStyle(
                      fontFamily: AppText.montserratBold,
                      color: AppColors.whiteColor,
                      fontSize: Get.height / 20.5)),
              Text(AppText.loginToContinue,
                  style: TextStyle(
                      fontFamily: AppText.montserratMedium,
                      color: AppColors.introTextColor,
                      fontSize: 14)),
              const SizedBox(
                height: 25,
              ),
              Text(AppText.email,
                  style: TextStyle(
                      fontFamily: AppText.montserratMedium,
                      color: AppColors.introTextColor,
                      fontSize: 14)),
              const SizedBox(
                height: 10,
              ),
              SizedBox(
                height: 48,
                child: CommonTextField(
                  isSuffixIcon: true,
                  hintText: AppText.hintTextForEmail,
                  suffixIcon: GestureDetector(
                      onTap: () {
                      },
                      child: Padding(
                        padding: const EdgeInsets.only(top: 12,right: 10,bottom: 12),
                        child:  Image.asset(AppIcon.checkCircle),
                      )
                  ),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Text("Password:",
                  style: TextStyle(
                      fontFamily: AppText.montserratMedium,
                      color: AppColors.introTextColor,
                      fontSize: 14)),
              const SizedBox(
                height: 15,
              ),
              SizedBox(
                height: 48,
                child: CommonTextField(
                  isSuffixIcon: true,
                  textEditingController: controller,
                 labelText: "dfsdfshf",
                  hintText: "John@1234",
                  obscure: isVisible,
                  suffixIcon: GestureDetector(
                      onTap: () {
                        setState(() {
                          isVisible = !isVisible;
                        });
                      },
                      child: Padding(
                        padding: const EdgeInsets.only(top: 13,right: 10,bottom: 13),
                        child: isVisible ?
                            ImageIcon(const AssetImage(AppIcon.passwordOpenEye,),color:AppColors.introTextColor,size: 30,):
                            ImageIcon(const AssetImage(AppIcon.passwordLockEye),color:AppColors.introTextColor,size: 30,)
                        // Icon(
                        //   Icons.visibility,color: AppColors.whiteColor,)
                        //     : Icon(Icons.visibility_off,color: AppColors.whiteColor,),
                      )
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              GestureDetector(
                onTap: () {
                  Get.to(const BottomNavBar());
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
                        "Login",
                        style: TextStyle(
                          fontSize: Get.width / 26,
                          fontFamily: AppText.montserratSemiBold,
                          color: AppColors.blackColor,
                        ),
                      ),
                      SizedBox(
                        width: Get.width / 40,
                      ),
                      ImageIcon(const AssetImage(AppIcon.sendArrow),color: AppColors.blackColor,),

                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Text("or connect with",
                  style: TextStyle(
                      fontFamily: AppText.montserratMedium,
                      color: AppColors.introTextColor,
                      fontSize: 14)),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                   height: Get.height/14,
                    width: Get.width/4,
                    decoration: BoxDecoration(
                        color: AppColors.loginScreenButton,
                        borderRadius: BorderRadius.circular(70)),
                    child: Image.asset(AppIcon.fIcon,scale:3.5 ,),
                  ),
                  Container(
                    height: Get.height/14,
                    width: Get.width/4,
                    decoration: BoxDecoration(
                        color: AppColors.loginScreenButton2,
                        borderRadius: BorderRadius.circular(70)),
                    child: Image.asset(AppIcon.appleIcon,scale:3.5 ,),
                  ),
                  Container(
                    height: Get.height/14,
                    width: Get.width/4,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(70)),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 15.0, vertical: 10),
                      child:  Image.asset(AppIcon.googleIcon,scale:3.5 ,)
                    ),
                  )
                ],
              ),

              TextButton(
                onPressed: (){
                  Get.to(const PasswordRecoveryScreen());
                },
                  child: Text("Forget Password?",
                      style: TextStyle(
                          fontFamily: AppText.montserratMedium,
                          fontWeight: FontWeight.w500,
                          color: AppColors.introTextColor,
                          fontSize: 14)),),

              const SizedBox(height: 20,),
              GestureDetector(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const RegisterScreen(),));
                },
                child: Container(
                  height: Get.height / 18,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: Colors.transparent,
                      border: Border.all(color: AppColors.whiteColor),
                      borderRadius: BorderRadius.circular(Get.width / 15)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const SizedBox(width: 25,),
                      Text(
                        "Create an account",
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          fontFamily: AppText.montserratSemiBold,
                          color: AppColors.whiteColor,
                        ),
                      ),
                      SizedBox(
                        width: Get.width / 50,
                      ),
                    ImageIcon(const AssetImage(AppIcon.sendArrow),color: AppColors.whiteColor,),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 20,),
            ],
          ),
      ),
    ),
        ));
  }
}
