import 'package:flutter/material.dart';

import 'package:rentworkdo/components/app_constant.dart';
import 'package:rentworkdo/components/colors.dart';
import 'package:rentworkdo/components/images.dart';
import 'package:rentworkdo/view/booking/my_booking_screen.dart';
import 'package:rentworkdo/view/home/home_screen.dart';
import 'package:rentworkdo/view/home/search_place.dart';

import 'view/profile/aboutprofile_screen.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int _selectedIndex = 0;

  @override
  void initState() {
    _onItemTapped(0);
    super.initState();
  }


  static final List<Widget> _widgetOptions = <Widget>[

    HomeScreen(),
    SearchMorePlace(),
    // const ReceivingScreen(),
    const MyBookingScreen(),
    // ManageBookingScreen(),
    // const ConfirmedScreen(),
   const AboutProfile(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
          child: _widgetOptions.elementAt(_selectedIndex),
        ),
        bottomNavigationBar: SizedBox(
          height: height / 12,
          child: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            items: <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                activeIcon: Padding(
                  padding: EdgeInsets.only(bottom: width / 150),
                  child: Image.asset(
                    AppIcon.homeBottom,
                    scale: width / 430,
                    color: AppColors.whiteColor,
                  ),
                ),
                icon: Padding(
                  padding: EdgeInsets.only(bottom: width / 150),
                  child: Image.asset(
                    AppIcon.homeBottom,
                    scale: width / 430,
                    color: Colors.grey,
                  ),
                ),
                label: 'Home',
                backgroundColor: AppColors.blackColor,
              ),
              BottomNavigationBarItem(
                activeIcon: Padding(
                  padding: EdgeInsets.only(bottom: width / 150),
                  child: Image.asset(
                    AppIcon.showPlacesBottom,
                    color: AppColors.whiteColor,
                    scale: width / 430,
                  ),
                ),
                icon: Padding(
                  padding: EdgeInsets.only(bottom: width / 150),
                  child: Image.asset(
                    AppIcon.showPlacesBottom,
                    color: AppColors.greyColor,
                    scale: width / 430,
                  ),
                ),
                label: 'Show places',
                backgroundColor: AppColors.blackColor,
              ),
              BottomNavigationBarItem(
                activeIcon: Padding(
                  padding: EdgeInsets.only(bottom: width / 80),
                  child: Image.asset(
                    AppIcon.bookingBottom,
                    color: AppColors.whiteColor,
                    scale: width / 430,
                  ),
                ),
                icon: Padding(
                  padding: EdgeInsets.only(bottom: width / 80),
                  child: Image.asset(
                    AppIcon.bookingBottom,
                    color: AppColors.greyColor,
                    scale: width / 430,
                  ),
                ),
                label: 'Bookings',
                backgroundColor: AppColors.blackColor,
              ),
              BottomNavigationBarItem(
                activeIcon: Padding(
                  padding: EdgeInsets.only(bottom: width / 150),
                  child: Image.asset(
                    AppIcon.userBottom,
                    scale: width / 430,
                    color: AppColors.whiteColor,
                  ),
                ),
                icon: Padding(
                  padding: EdgeInsets.only(bottom: width / 150),
                  child: Image.asset(
                    AppIcon.userBottom,
                    scale: width / 430,
                    color: AppColors.greyColor,
                  ),
                ),
                label: 'User',
                backgroundColor: AppColors.blackColor,
              ),
            ],
            currentIndex: _selectedIndex,
            selectedItemColor: AppColors.whiteColor,
            onTap: _onItemTapped,
            unselectedItemColor: AppColors.greyColor,
            backgroundColor: AppColors.blackColor,
            showUnselectedLabels: true,
            selectedFontSize: width / 28,
            unselectedFontSize: width / 28,
          ),
        ));
  }
}
