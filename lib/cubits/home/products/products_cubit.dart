import 'package:e_commerce_app/data/models/product_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../data/services/fake_store_service.dart';

part 'products_state.dart';

class ProductsCubit extends Cubit<ProductsState> {
  ProductsCubit() : super(ProductsInitial());

  void getProducts() async {
    try {
      emit(ProductsLoading());
      final result = await FakeStoreService.getProducts();
      emit(ProductsSuccess(data: result));
    } catch (e) {
      emit(ProductsFailure(
          errorMessage: "Error occurred. Please try again later."));
    }
  }
}
