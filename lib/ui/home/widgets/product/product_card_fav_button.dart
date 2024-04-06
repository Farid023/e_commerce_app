import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../constants/app_assets.dart';

class ProductCardFavBtn extends StatefulWidget {
  const ProductCardFavBtn({super.key});

  @override
  State<ProductCardFavBtn> createState() => _ProductCardFavBtnState();
}

class _ProductCardFavBtnState extends State<ProductCardFavBtn> {
  bool isClicked = false;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      style: IconButton.styleFrom(
        backgroundColor: Colors.white,
        surfaceTintColor: Colors.purple,
        elevation: 10
      ),
      onPressed: () {
        setState(() {
          isClicked = !isClicked;
        });
      },
      icon: SvgPicture.asset(
          isClicked ? AppAssets.heart_active : AppAssets.heart),
    );
  }
}
