import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:germanonic/components/item_info.dart';

import '../data/models/item_model.dart';

class PhrasesItem extends StatelessWidget {
  final ItemModel item;
  const PhrasesItem({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 90.h,
      decoration: BoxDecoration(
        color: const Color(0xFF1D1C21),
        borderRadius: BorderRadius.circular(15.r),
      ),
      child: ItemInfo(
        item: item,
        fontsize: 18.sp,
      ),
    );
  }
}
