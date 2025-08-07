import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_application_1/constant/app_colors.dart';
import 'package:flutter_application_1/constant/icons.dart';
import 'package:flutter_application_1/constant/shared.dart';
import 'package:flutter_application_1/home/view/components/nav_bar_icon.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        //height: 35,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30),
              topRight: Radius.circular(30),
            ),
            boxShadow: [sharedShadow()]),
        child: BottomNavigationBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          currentIndex: 0,
          selectedItemColor: AppColors.buttonColor,
          unselectedItemColor: AppColors.backgroundColor,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: NavBarIcon(
                isSelected: true,
                onTap: () {},
                title: "home",
                url: AppIcons.home,
              ),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: NavBarIcon(
                isSelected: true,
                onTap: () {},
                title: "search",
                url: AppIcons.search,
              ),
              label: 'search',
            ),
            BottomNavigationBarItem(
              icon: NavBarIcon(
                isSelected: true,
                onTap: () {},
                title: "likes",
                url: AppIcons.heart,
              ),
              label: "shopping bag",
            ),
            BottomNavigationBarItem(
              icon: NavBarIcon(
                isSelected: true,
                onTap: () {},
                title: "search",
                url: AppIcons.bag,
              ),
              label: "shopping bag",
            ),
          ],
        ));
  }
}
