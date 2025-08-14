import 'package:design/core/constants/text_styles.dart';
import 'package:design/screens/menu/presentation/views/widgets/quantity_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../data/models/item_model.dart';

class BuildPriceSection extends StatelessWidget {
  const BuildPriceSection({super.key, required this.item});
  final ItemModel item;
  // final String currentPrice;
  // final String originalPrice;
  // final int quantity;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Row(
        // crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            flex: 1,
            child: Text(
              ('${((item.currentPrice)!.toInt()).toString()}' ' BD'),
              style: AppTextStyles.bold20.copyWith(fontSize: 16.spMin),
              textAlign: TextAlign.left,
            ),
          ),
          // const SizedBox(width: 10),
          Expanded(
            flex: 1,
            child: Text(
              ('${((item.currentPrice)!.toInt() + 50).toString()}' '  BD'),
              style: AppTextStyles.regular16.copyWith(
                  decoration: TextDecoration.lineThrough,
                  color: Color(0xff757575),
                  fontSize: 14.spMin),
              textAlign: TextAlign.left,
            ),
          ),
          Expanded(
            flex: 2,
            child: BuildQuantityController(
              itemId: item.itemId as int,
            ),
          ),
        ],
      ),
    );
  }
}
