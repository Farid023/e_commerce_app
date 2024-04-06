import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../data/models/category_model.dart';
import '../../../data/services/fake_store_service.dart';



part 'category_state.dart';

class CategoryCubit extends Cubit<CategoryState> {
  CategoryCubit() : super(CategoryInitial());

  late List<Categories> _categoryList;
  int? selectedChipValue;

  void getCategories() async {
    try {
      emit(CategoryLoading());
      final result = await FakeStoreService.getCategoryList();
      _categoryList = result;
      emit(CategorySuccess(data: result));
    } catch (e) {
      emit(CategoryFailure(
          errorMessage: "Error occurred. Please try again later."));
    }
  }

  void selectCategory(int? index) {
    selectedChipValue = index;
    emit(CategorySuccess(data: _categoryList));
  }
}
