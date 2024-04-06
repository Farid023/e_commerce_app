import 'package:e_commerce_app/constants/app_assets.dart';
import 'package:e_commerce_app/constants/app_colors.dart';
import 'package:flutter/material.dart';

class ViewPageModel {
  final String title;
  final Color cardBackgroundColor;
  final String image;


  const ViewPageModel({
    required this.image,
    required this.title,
    required this.cardBackgroundColor,
  });

  static const List<ViewPageModel> viewPageCardList = [

    ViewPageModel(
      image: AppAssets.card1,
        title: "Get Your Special Sale up to 50%",
        cardBackgroundColor: AppColors.colorPrimary),
    ViewPageModel(
        image: AppAssets.card2,
        title: "Get Your Special Sale up to 70%",
        cardBackgroundColor: AppColors.colorPrimary),
  ];
}
