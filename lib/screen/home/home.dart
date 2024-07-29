import 'package:flutter/material.dart';
import 'package:football_live/constants.dart';
import 'package:football_live/screen/home/pages/accountPage.dart';
import 'package:football_live/screen/home/pages/calenderPage.dart';
import 'package:football_live/screen/home/pages/homePage.dart';
import 'package:football_live/screen/home/pages/standingPage.dart';
import 'package:football_live/widgets/bottomNavigation.dart';
import 'package:iconsax/iconsax.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentTab = 0;
  List screens = [
    HomePage(),
    CalenderPage(),
    StandingPage(),
    AccountPage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        padding: EdgeInsets.only(top: 10),
        width: double.infinity,
        height: 80,
        decoration: BoxDecoration(
            color: FbackgroundColor,
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(20),
              topLeft: Radius.circular(20),
            ),
            boxShadow: [
              BoxShadow(blurRadius: 20, color: Colors.grey.shade200),
            ]),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            BottomNavigation(
              icon: Iconsax.home,
              icontitle: 'Home',
              onTap: () {
                setState(() {
                  currentTab = 0;
                });
              },
              isActive: currentTab == 0,
            ),
            BottomNavigation(
              icon: Iconsax.calendar,
              icontitle: 'Calender',
              onTap: () {
                setState(() {
                  currentTab = 1;
                });
              },
              isActive: currentTab == 1,
            ),
            BottomNavigation(
              icon: Iconsax.chart,
              icontitle: 'Standing',
              onTap: () {
                setState(() {
                  currentTab = 2;
                });
              },
              isActive: currentTab == 2,
            ),
            BottomNavigation(
              icon: Iconsax.profile_circle,
              icontitle: 'Account',
              onTap: () {
                setState(() {
                  currentTab = 3;
                });
              },
              isActive: currentTab == 3,
            ),
          ],
        ),
      ),
      body: screens[currentTab],
    );
  }
}
