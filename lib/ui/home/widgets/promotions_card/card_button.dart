
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PromoCardButton extends StatelessWidget {
  const PromoCardButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Flexible(
      flex: 2,
      child: TextButton(
        style: const ButtonStyle(
          backgroundColor: MaterialStatePropertyAll(Colors.black),
          foregroundColor: MaterialStatePropertyAll(Colors.white),
        ),
        onPressed: () {},
        child: Text(
          "Shop Now",
          style: TextStyle(fontSize: 12.sp),
        ),
      ),
    );
  }
}
