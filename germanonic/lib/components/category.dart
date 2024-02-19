import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Category extends StatelessWidget {
  final String cateNameEn;
  final String cateNameDe;
  final Function() ontap;
  const Category(
      {super.key,
      required this.cateNameEn,
      required this.cateNameDe,
      required this.ontap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Container(
        padding: EdgeInsets.all(16.r),
        height: 90.h,
        width: 1.sw,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(
            15.r,
          ),
          color: const Color(0xFF1D1C21),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              cateNameEn,
              style: TextStyle(fontSize: 20.sp, color: Colors.white),
            ),
            Text(
              cateNameDe,
              style: TextStyle(fontSize: 18.sp, color: Colors.white),
            ),
          ],
        ),
      ),
    );
  }
}
