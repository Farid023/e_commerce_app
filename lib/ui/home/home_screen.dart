import 'package:e_commerce_app/constants/app_assets.dart';
import 'package:e_commerce_app/constants/app_colors.dart';
import 'package:e_commerce_app/ui/discover/discover_screen.dart';
import 'package:e_commerce_app/ui/home/widgets/home_body.dart';
import 'package:e_commerce_app/ui/message/message_screen.dart';
import 'package:e_commerce_app/ui/profile/profile_screen.dart';
import 'package:e_commerce_app/ui/widgets/bottom_navbar.dart';
import 'package:e_commerce_app/ui/wishlist/wishlist_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {


  int _currentIndex = 0;

  static const List<Widget> _bodyWidgets = <Widget>[
    HomeScreenBody(),
    DiscoverScreen(),
    WishlistScreen(),
    MessageScreen(),
    ProfileScreen()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //extendBody: true,
      body: Stack(children: [
        _bodyWidgets[_currentIndex],
        Align(
          alignment: Alignment.bottomCenter,
          child: BottomNavbar(
            selectedIndex: _currentIndex,
            onDestinationSelected: (int index) {
              setState(() {
                _currentIndex = index;
              });
            },
          ),
        ),
      ]),
    );
  }
}
