import 'package:design/screens/menu/presentation/views/widgets/quantity_controller.dart';
import 'package:flutter/material.dart';

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
              style: const TextStyle(
                fontWeight: FontWeight.w900,
                fontFamily: 'TabletGothic',
                fontSize: 16,
              ),
              textAlign: TextAlign.left,
            ),
          ),
          // const SizedBox(width: 10),
          Expanded(
            flex: 1,
            child: Text(
              ('${((item.currentPrice)!.toInt() + 50).toString()}' '  BD'),
              style: TextStyle(
                decoration: TextDecoration.lineThrough,
                fontSize: 12,
                fontFamily: 'TabletGothic',
                color: Color(0xff757575),
              ),
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
