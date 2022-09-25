import 'package:flutter/material.dart';
import 'package:photo_gallery/constants/app_colors.dart';
import 'package:photo_gallery/constants/app_styles.dart';
import 'package:photo_gallery/presentation/pages/cart/cart.dart';
import 'package:photo_gallery/presentation/pages/custom_order/custom_order_page.dart';
import 'package:photo_gallery/presentation/pages/home/home_page.dart';
import 'package:photo_gallery/presentation/pages/profile/profile.dart';

import '../../reusable_components/bottom_nav_bar.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  late final PageController _pageController;

  @override
  void initState() {
    _pageController = PageController(initialPage: 0,);
    super.initState();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavBar(pageController: _pageController),
      body: PageView(
        physics: const NeverScrollableScrollPhysics(),
        controller: _pageController,
        children: const [
          HomePage(),
          CustomOrderPage(),
          CartPage(),
          ProfilePage()
        ],
      ),
    );
  }
}

