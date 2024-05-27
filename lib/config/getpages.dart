import 'package:get/get.dart';

import 'package:rentworkdo/config/approutes.dart';
import 'package:rentworkdo/view/auth_screen/login_screen.dart';
import 'package:rentworkdo/view/booking/cancellationsurvey.dart';
import 'package:rentworkdo/view/booking/filtersscreen.dart';
import 'package:rentworkdo/view/home/home_screen.dart';
import 'package:rentworkdo/view/home/reservation_screen.dart';
import 'package:rentworkdo/view/home/splacedetails_screen.dart';
import 'package:rentworkdo/view/profile/aboutprofile_screen.dart';
import '../bottom_navigationbar.dart';
import '../view/booking/changeofplans.dart';
import '../view/booking/confirmedscreen.dart';
import '../view/booking/managebooking.dart';
import '../view/booking/receivingscreen.dart';
import '../view/home/appoinment_step_screen.dart';
import '../view/home/appointment_screen.dart';
import '../view/home/search_place.dart';


class AppRoutes {
  static List<GetPage> pages = [
    // GetPage(name: AppRoute.welcomeScreen, page: () => WelcomeScreen()),
    GetPage(name: AppRoute.homeScreen, page: () => HomeScreen()),
    GetPage(name: AppRoute.searchScreen, page: () => SearchMorePlace()),
    GetPage(name: AppRoute.homeScreen, page: () => HomeScreen()),
    GetPage(
        name: AppRoute.splaceDetailScreen, page: () => SplaceDetailScreen()),
    GetPage(name: AppRoute.appoinmentScreen, page: () => AppoinmentScreen()),
    GetPage(
        name: AppRoute.appoinmentStepScreen,
        page: () => AppoinmentStepScreen()),
    GetPage(name: AppRoute.aboutProfile, page: () => const AboutProfile()),
    GetPage(
        name: AppRoute.receivingScreen, page: () => const ReceivingScreen()),
    GetPage(
        name: AppRoute.confirmedScreen, page: () => const ConfirmedScreen()),
    GetPage(
        name: AppRoute.manageBookingScreen,
        page: () => const ManageBookingScreen()),
    GetPage(name: AppRoute.changeOfPlans, page: () => ChangeOfPlans()),
    GetPage(name: AppRoute.bottomNavBar, page: () => const BottomNavBar()),
    GetPage(
        name: AppRoute.cancellationSurveyScreen,
        page: () => CancellationSurveyScreen()),
    GetPage(name: AppRoute.filtersScreen, page: () => FiltersScreen2()),
    GetPage(name: AppRoute.loginScreen, page: () => const LoginScreen()),
    GetPage(name: AppRoute.reservationScreen, page: () => ReservationScreen()),
  ];
}
