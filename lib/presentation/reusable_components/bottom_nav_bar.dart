import 'package:flutter/material.dart';
import 'package:photo_gallery/constants/app_colors.dart';

import '../../constants/app_styles.dart';

class BottomNavBar extends StatefulWidget {
  final PageController pageController;
  const BottomNavBar({Key? key, required this.pageController}) : super(key: key);

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
        currentIndex: currentIndex,
        selectedItemColor: AppColors.primaryColor,
        selectedLabelStyle: getBoldTextStyle(fontSize: 12),
        unselectedItemColor: AppColors.semiLightGrey,
        unselectedLabelStyle:getRegularTextStyle(fontSize: 12),
        showUnselectedLabels: true,
        iconSize: 22,

        onTap: (index) {
          setState(() {
            currentIndex = index;
            widget.pageController.jumpToPage(index);
          });
        },

        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home'
          ),
          BottomNavigationBarItem(
              icon: Icon( Icons.add),
              label: 'Custom Order'
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart_rounded),
              label: 'Cart'
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',

          ),
        ]
    );
  }
}