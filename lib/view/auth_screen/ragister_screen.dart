import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rentworkdo/bottom_navigationbar.dart';
import '../../components/colors.dart';
import '../../components/images.dart';
import '../../components/string.dart';
import '../utils/common_text_feild_one.dart';
class RegisterScreen extends StatefulWidget {
  const RegisterScreen({Key? key}) : super(key: key);
static const routeName = "/RegisterScreen";
  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {

  bool isVisible = true;
  TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    controller.text = "john@1234";
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
                  Text(AppText.welcomeBack,
                      style: TextStyle(
                          fontFamily: AppText.montserratBold,
                          color: AppColors.whiteColor,
                          fontSize: Get.height / 20.5)),
                  Text(AppText.registerToContinue,
                      style: TextStyle(
                          fontFamily: AppText.montserratMedium,
                          color: AppColors.introTextColor,
                          fontSize: 14)),
                  const SizedBox(
                    height: 25,
                  ),
                  Text("Name:", style: TextStyle(
                      fontFamily: AppText.montserratMedium,
                      color: AppColors.introTextColor,
                      fontSize: 14)),
                  const SizedBox(
                    height: 10,
                  ),
                  SizedBox(
                    height: 48,
                  child: CommonTextField(
                      hintText: "Jonathan Doe",
                  ),
                  ),
                  const SizedBox(
                    height: 10,
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
                      hintText: "john@doe.com",
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
                      hintText: "john@1234",
                      textEditingController: controller,
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
                              ImageIcon(const AssetImage(AppIcon.passwordOpenEye,),color:AppColors.introTextColor ,):
                              ImageIcon(const AssetImage(AppIcon.passwordLockEye),color:AppColors.introTextColor)
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
                            "Create an account",
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


                  const SizedBox(height: 15,),
                  RichText(
                      text: TextSpan(
                       text: "Already have an account?",
                          style: TextStyle(
                          color: AppColors.introTextColor
                      ),
                        children: [

                          TextSpan(
                            text: " Login",
                            style: TextStyle(
                                color: AppColors.whiteColor,
                              fontWeight: FontWeight.w700
                            ),
                            onEnter: (event) {
                          },)
                        ]
                      )),
                  // Row(
                  //   children: [
                  //     Text("Already have an account?",style: TextStyle(
                  //       color: AppColors.introTextColor
                  //     ),),
                  //     TextButton(onPressed: (){},
                  //         child: Text(
                  //           "Login",
                  //           style: TextStyle(
                  //             fontWeight: FontWeight.w700,
                  //             color: AppColors.whiteColor
                  //           ),
                  //         ))
                  //   ],
                  // ),
                  // GestureDetector(
                  //   onTap: () {
                  //     Navigator.push(context, MaterialPageRoute(builder: (context) => RegisterScreen(),));
                  //
                  //   },
                  //   child: Container(
                  //     height: Get.height / 18,
                  //     width: double.infinity,
                  //     decoration: BoxDecoration(
                  //         color: Colors.transparent,
                  //         border: Border.all(color: AppColors.whiteColor),
                  //         borderRadius: BorderRadius.circular(Get.width / 15)),
                  //     child: Row(
                  //       mainAxisAlignment: MainAxisAlignment.start,
                  //       children: [
                  //         const SizedBox(width: 25,),
                  //         Text(
                  //           "Create An Account",
                  //           style: TextStyle(
                  //             fontSize: 14,
                  //             fontFamily: AppText.montserratSemiBold,
                  //             color: AppColors.whiteColor,
                  //           ),
                  //         ),
                  //         SizedBox(
                  //           width: Get.width / 50,
                  //         ),
                  //         Icon(
                  //           Icons.arrow_forward,
                  //           color: AppColors.whiteColor,
                  //           size: Get.width / 22,
                  //         ),
                  //       ],
                  //     ),
                  //   ),
                  // ),
                  const SizedBox(height: 20,),

                ],
              ),
            ),
          ),
        ));
  }
}
