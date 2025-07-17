import 'package:ctc_calculator/src/pages/contact_page.dart';
import 'package:ctc_calculator/src/pages/home_page.dart';
import 'package:ctc_calculator/src/pages/privacy_policy_page.dart';
import 'package:ctc_calculator/src/theme/app_color.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

class BottomNavigator extends StatefulWidget {
  const BottomNavigator({super.key});

  @override
  State<BottomNavigator> createState() => _BottomNavigatorState();
}

class _BottomNavigatorState extends State<BottomNavigator> {
  int _page = 0;
  final GlobalKey<CurvedNavigationBarState> _bottomNavigationKey = GlobalKey();

  final screen = [HomePage(), ContactPage(), PrivacyPolicyPage()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: AppColors.background,
        color: AppColors.cardBackground,
        animationDuration: Duration(milliseconds: 450),
        onTap: (index) {
          setState(() {
            _page = index;
          });
        },
        items: [
          Icon(Icons.home),
          // Icon(Icons.favorite),
          Icon(Icons.contact_page),
          Icon(Icons.privacy_tip),
        ],
      ),
      body: screen[_page],
    );
  }
}
