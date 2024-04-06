import 'package:e_commerce_app/ui/home/widgets/promotions_card/card_pageview_builder.dart';
import 'package:e_commerce_app/ui/home/widgets/promotions_card/page_indicator.dart';
import 'package:flutter/material.dart';

class PromotionsCardView extends StatefulWidget {
  const PromotionsCardView({super.key});

  @override
  State<PromotionsCardView> createState() => _PromotionsCardViewState();
}

class _PromotionsCardViewState extends State<PromotionsCardView> {
  late final PageController _pageController;


  @override
  void initState() {
    super.initState();
    _pageController = PageController();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
        CardPageViewBuilder(pageController: _pageController),
        PageIndicator(pageController: _pageController)

      ],

    );
  }
}
