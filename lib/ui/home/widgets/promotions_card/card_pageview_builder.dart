import 'package:e_commerce_app/data/models/view_page_model.dart';
import 'package:e_commerce_app/ui/home/widgets/promotions_card/card_item.dart';
import 'package:e_commerce_app/ui/home/widgets/promotions_card/page_indicator.dart';
import 'package:flutter/material.dart';

class CardPageViewBuilder extends StatelessWidget {
  const CardPageViewBuilder({super.key, required this.pageController});

  final PageController pageController;

  @override
  Widget build(BuildContext context) {
    List<ViewPageModel> viewPageModel = ViewPageModel.viewPageCardList;
    return Expanded(
      child: PageView.builder(
        controller: pageController,
        itemCount: viewPageModel.length,
        itemBuilder: (context, index) {
          final data = viewPageModel[index];
          return CardItem(
              title: data.title,
              cardBackgroundColor: data.cardBackgroundColor,
              image: data.image);
        },
      ),
    );
  }
}
