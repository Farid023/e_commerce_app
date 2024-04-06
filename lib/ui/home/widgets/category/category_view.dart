import 'package:e_commerce_app/data/models/category_model.dart';
import 'package:e_commerce_app/ui/home/widgets/category/category_chip.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../cubits/home/category/category_cubit.dart';

class CategoryView extends StatelessWidget {
  const CategoryView({
    super.key,
    this.labelText,
  });

  final String? labelText;

  @override
  Widget build(BuildContext context) {
    final cubit = BlocProvider.of<CategoryCubit>(context);
    return BlocBuilder<CategoryCubit, CategoryState>(
      builder: (context, state) {
        final selectedChipValue =
            state is CategorySuccess ? cubit.selectedChipValue : null;
        if (state is CategoryInitial || state is CategoryLoading) {
          return Container(
            margin: const EdgeInsets.all(10),
            height: 30,
            width: 30,
            child: const CircularProgressIndicator(),
          );
        } else if (state is CategoryFailure) {
          return Text(state.errorMessage);
        } else if (state is CategorySuccess) {
          final List<Categories> categoryList = state.data;
          return SizedBox(
            height: 60.h,
            child: ListView.builder(
              padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
              itemCount: categoryList.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (BuildContext context, int index) {
                Categories category = categoryList[index];
                return CategoryChip(
                  selected: selectedChipValue == index,
                  labelText: category.category!,
                  onSelected: (bool selected) {
                    if (selected) {
                      cubit.selectCategory(index);
                    } else {
                      cubit.selectCategory(null);
                    }
                  },
                );
              },
            ),
          );
        } else {
          return const SizedBox.shrink();
        }
      },
    );
  }
}
