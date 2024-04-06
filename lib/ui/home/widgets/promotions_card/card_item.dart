import 'package:e_commerce_app/ui/home/widgets/promotions_card/card_button.dart';
import 'package:e_commerce_app/ui/home/widgets/promotions_card/promo_card_title.dart';
import 'package:flutter/material.dart';

class CardItem extends StatelessWidget {
  const CardItem({
    super.key,
    required this.title,
    required this.cardBackgroundColor,
    required this.image,
  });

  final String title;
  final String image;
  final Color cardBackgroundColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      padding: const EdgeInsets.symmetric(horizontal: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: cardBackgroundColor,
      ),
      child: Row(
        children: [
          Expanded(
            flex: 3,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                PromoCardTitle(title: title),
                const PromoCardButton(),
              ],
            ),
          ),
          Expanded(
            flex: 2,
            child: Image.asset(image),
          )
        ],
      ),
    );
  }
}
