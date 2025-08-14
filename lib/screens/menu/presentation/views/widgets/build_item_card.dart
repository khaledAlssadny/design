import 'package:design/screens/menu/presentation/views/widgets/build_food_item_details.dart';
import 'package:design/screens/menu/presentation/views/widgets/build_food_item_image.dart';
import 'package:flutter/material.dart';
import 'package:design/screens/menu/data/models/item_model.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BuildFoodItemCard extends StatelessWidget {
  final ItemModel item;

  const BuildFoodItemCard({
    super.key,
    required this.item,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 500.w,
      height: 250.h,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10.r),
        border: Border.all(color: const Color.fromARGB(133, 216, 216, 216)),
      ),
      child: Row(
        children: [
          /// Image - fixed ratio (takes 1/3 of the width)
          Expanded(
              flex: 1,
              child: SizedBox(
                  child: BuildFoodItemImage(imagePath: item.image ?? ''))),

          //Details - take remaining space (takes 2/3 of the width)
          Expanded(flex: 3, child: BuildFoodItemDetails(item: item)),
        ],
      ),
    );
  }
}
