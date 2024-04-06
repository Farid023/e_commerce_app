import 'package:e_commerce_app/ui/home/widgets/appbar/custom_appbar.dart';
import 'package:e_commerce_app/ui/home/widgets/category/category_chip.dart';
import 'package:e_commerce_app/ui/home/widgets/category/category_view.dart';
import 'package:e_commerce_app/ui/home/widgets/product/product_card_item.dart';
import 'package:e_commerce_app/ui/home/widgets/product/products_view.dart';
import 'package:e_commerce_app/ui/home/widgets/promotions_card/promotions_view.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class HomeScreenBody extends StatelessWidget {
  const HomeScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
        const HomeCustomAppbar(),
        SizedBox(
          height: MediaQuery.of(context).size.height / 4,
          child: const PromotionsCardView(),
        ),
        const CategoryView(),
        const ProductsView(),
      ]),
    );
  }
}
