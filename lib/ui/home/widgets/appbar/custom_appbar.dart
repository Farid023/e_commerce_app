



import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../constants/app_assets.dart';
import '../../../../constants/app_colors.dart';

class HomeCustomAppbar extends StatelessWidget {
  const HomeCustomAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height*0.06,
      margin: const EdgeInsets.all(10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            child: SearchBar(
              //Todo(Bottom Nav Bar jumps up when keyboard is active)
              elevation: const MaterialStatePropertyAll(0),
              constraints: const BoxConstraints(
                maxHeight: 48,
              ),
              hintText: "Search",
              backgroundColor:
              const MaterialStatePropertyAll(AppColors.whiteBgColor),
              trailing: [
                IconButton(
                    onPressed: () {},
                    icon: SvgPicture.asset(AppAssets.search)),
              ],
            ),
          ),
          const SizedBox(
            width: 5,
          ),
          IconButton(
            constraints: const BoxConstraints(minHeight: 48, minWidth: 48),
            onPressed: () {},
            icon: SvgPicture.asset(AppAssets.bell),
            style:
            IconButton.styleFrom(backgroundColor: AppColors.whiteBgColor),
          ),
          const SizedBox(
            width: 5,
          ),
          IconButton(
            constraints: const BoxConstraints(minHeight: 48, minWidth: 48),
            onPressed: () {},
            icon: SvgPicture.asset(AppAssets.shoppingBag),
            style:
            IconButton.styleFrom(backgroundColor: AppColors.whiteBgColor),
          ),
        ],
      ),
    );
  }
}
