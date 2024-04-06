import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../constants/app_assets.dart';
import '../../constants/app_colors.dart';

class BottomNavbar extends StatelessWidget {
  const BottomNavbar({
    super.key,
    required this.selectedIndex,
    this.onDestinationSelected,
  });

  final int selectedIndex;
  final void Function(int)? onDestinationSelected;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        margin: const EdgeInsets.only(left: 8, right: 8, bottom: 10),
        decoration: BoxDecoration(
          color: Colors.black,
          borderRadius: BorderRadius.circular(50),
        ),
        child: NavigationBarTheme(
          data: NavigationBarThemeData(
            height: MediaQuery.of(context).size.height*0.08,
            backgroundColor: Colors.transparent,
            indicatorColor: Colors.transparent,
            labelBehavior: NavigationDestinationLabelBehavior.alwaysShow,
            elevation: 0.0,
            labelTextStyle: MaterialStateProperty.resolveWith(
              (Set<MaterialState> states) {
                if (states.contains(MaterialState.selected)) {
                  return const TextStyle(
                      color: AppColors.colorPrimary,
                      fontSize: 12,
                      fontWeight: FontWeight.bold);
                } else {
                  return const TextStyle(
                    color: Colors.white60,
                    fontSize: 12,
                  );
                }
              },
            ),
          ),
          child: NavigationBar(
            selectedIndex: selectedIndex,
            onDestinationSelected: onDestinationSelected,
            destinations: [
              NavigationDestination(
                icon: SvgPicture.asset(AppAssets.home, color: Colors.white60),
                selectedIcon: SvgPicture.asset(AppAssets.home,
                    color: AppColors.colorPrimary),
                label: "Home",
              ),
              NavigationDestination(
                icon: SvgPicture.asset(AppAssets.discovery,
                    color: Colors.white60),
                selectedIcon: SvgPicture.asset(AppAssets.discovery,
                    color: AppColors.colorPrimary),
                label: "Discover",
              ),
              NavigationDestination(
                icon: SvgPicture.asset(AppAssets.heart, color: Colors.white60),
                selectedIcon: SvgPicture.asset(AppAssets.heart,
                    color: AppColors.colorPrimary),
                label: "Wishlist",
              ),
              NavigationDestination(
                icon: SvgPicture.asset(AppAssets.messageDotsSquare,
                    color: Colors.white60),
                selectedIcon: SvgPicture.asset(AppAssets.messageDotsSquare,
                    color: AppColors.colorPrimary),
                label: "Message",
              ),
              NavigationDestination(
                icon:
                    SvgPicture.asset(AppAssets.profile, color: Colors.white60),
                selectedIcon: SvgPicture.asset(AppAssets.profile,
                    color: AppColors.colorPrimary),
                label: "Profile",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
