import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rentworkdo/components/colors.dart';
import 'package:rentworkdo/config/getpages.dart';
import 'package:rentworkdo/view/welcome_screen.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  // SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
  //   statusBarColor: Colors.transparent,
  // ));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(

      locale: const Locale('en', 'US'),
      supportedLocales: const [
        Locale('en', 'US'), // English
        Locale('th', 'TH'), // Thai
      ],

      title: "rent",
      debugShowCheckedModeBanner: false,
      color: AppColors.blackColor,
      home: const WelcomeScreen(),
      getPages: AppRoutes.pages,
    );
  }
}
