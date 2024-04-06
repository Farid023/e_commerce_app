
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../constants/app_colors.dart';

class PromoCardTitle extends StatelessWidget {
  const PromoCardTitle({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Flexible(
      flex: 5,
      child: Text(
        title,
        maxLines: 3,
        style: TextStyle(
            fontSize: 18.sp,
            fontWeight: FontWeight.bold,
            color: AppColors.whiteBgColor),
      ),
    );
  }
}
