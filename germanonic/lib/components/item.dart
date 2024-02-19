import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:germanonic/components/item_info.dart';

import '../data/models/item_model.dart';

class Item extends StatelessWidget {
  final ItemModel item;
  const Item({
    super.key,
    required this.item,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100.h,
      decoration: BoxDecoration(
        color: const Color(0xFF1D1C21),
        borderRadius: BorderRadius.circular(15.r),
      ),
      child: Row(
        children: [
          Container(
            width: 85.w,
            height: 100.h,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(15.r),
            ),
            child: Image.asset(item.img!),
          ),
          Expanded(
              child: ItemInfo(
            item: item,
            fontsize: 18.sp,
          )),
        ],
      ),
    );
  }
}
