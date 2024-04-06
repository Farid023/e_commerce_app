import 'package:e_commerce_app/ui/home/widgets/product/product_card_category.dart';
import 'package:e_commerce_app/ui/home/widgets/product/product_card_image.dart';
import 'package:e_commerce_app/ui/home/widgets/product/product_card_rate_and_price.dart';
import 'package:flutter/material.dart';

class ProductCardItem extends StatelessWidget {
  const ProductCardItem({
    super.key,
    required this.image,
    required this.title,
    required this.price,
    required this.rating,
    required this.category,
  });

  final String? image;
  final String? title;
  final double? price;
  final double? rating;
  final String? category;

  @override
  Widget build(BuildContext context) {
    return Card(
     // color: Colors.deepPurple,
      elevation: 2,
      //surfaceTintColor: Colors.black,

      margin: const EdgeInsets.all(10),
      child: Padding(
        padding: const EdgeInsets.all(0.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ProductCardImage(
              image: image,
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ProductCardCategory(
                      category: category,
                    ),
                    Expanded(
                      child: Text(
                        "$title",
                        maxLines: 3,
                        
                        overflow: TextOverflow.ellipsis,
                        style: const TextStyle(
                            fontSize: 14, fontWeight: FontWeight.w500),
                      ),
                    ),
                    ProductCardRateAndPrice(price: price, rating: rating),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
