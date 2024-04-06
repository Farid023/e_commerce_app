import 'package:e_commerce_app/ui/home/widgets/product/product_card_fav_button.dart';
import 'package:flutter/material.dart';

class ProductCardImage extends StatelessWidget {
  const ProductCardImage({
    super.key,
    required this.image,
  });

  final String? image;

  @override
  Widget build(BuildContext context) {
    return ColoredBox(
      color: Colors.white,
      child: Stack(
        alignment: Alignment.topRight,
        children: [
          Align(
            alignment: Alignment.center,
            child: Image.network(
              "$image",
              fit: BoxFit.fill,
              height: 125,
              width: 125,
            ),
          ),
          const ProductCardFavBtn(),
        ],
      ),
    );
  }
}
