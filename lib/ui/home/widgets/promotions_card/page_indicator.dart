import 'package:e_commerce_app/data/models/view_page_model.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class PageIndicator extends StatelessWidget {
  const PageIndicator({
    super.key,
    required this.pageController,
  });

  final PageController pageController;

  @override
  Widget build(BuildContext context) {
    const items = ViewPageModel.viewPageCardList;
    return SmoothPageIndicator(
      controller: pageController,
      count: items.length,
      effect: const ExpandingDotsEffect(
          dotHeight: 4,
          dotWidth: 6,
          spacing: 4,
          dotColor: Colors.grey,
          activeDotColor: Colors.black,
          expansionFactor: 3),
    );
  }
}
