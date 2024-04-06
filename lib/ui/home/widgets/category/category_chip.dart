import 'package:e_commerce_app/constants/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CategoryChip extends StatelessWidget {
  const CategoryChip({
    super.key,
    this.onSelected,
    required this.selected,
    required this.labelText,
  });

  final void Function(bool)? onSelected;
  final bool selected;
  final String labelText;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(2.0),
      child: ChoiceChip(
        padding: const EdgeInsets.all(1),
        label: Text(
          labelText,
          style: TextStyle(
              fontWeight: FontWeight.bold,
              color: selected ? AppColors.colorPrimary : AppColors.black),
        ),
        selected: selected,
        selectedColor: Colors.transparent,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
            side: const BorderSide(style: BorderStyle.none)),
        showCheckmark: false,
        onSelected: onSelected,
      ),
    );
  }
}
