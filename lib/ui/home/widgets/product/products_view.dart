import 'package:e_commerce_app/cubits/home/products/products_cubit.dart';
import 'package:e_commerce_app/data/models/product_model.dart';
import 'package:e_commerce_app/ui/home/widgets/product/product_card_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ProductsView extends StatelessWidget {
  const ProductsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: BlocBuilder<ProductsCubit, ProductsState>(
        builder: (context, state) {
          if (state is ProductsInitial || state is ProductsLoading) {
            return const CircularProgressIndicator();
          } else if (state is ProductsFailure) {
            return Text(state.errorMessage);
          } else if (state is ProductsSuccess) {
            final List<Product> productList = state.data;
            return GridView.builder(
                padding: const EdgeInsets.only(bottom: 100),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  mainAxisSpacing: 5,
                  crossAxisSpacing: 5,
                  crossAxisCount: 2,
                  mainAxisExtent: 280,
                ),
                itemCount: productList.length,
                itemBuilder: (BuildContext context, int index) {
                  Product product = productList[index];
                  return ProductCardItem(
                    image: product.image,
                    title: product.title,
                    price: product.price,
                    rating: product.rating?.rate,
                    category: product.category,
                  );
                });
          } else {
            return const SizedBox.shrink();
          }
        },
      ),
    );
  }
}
