import 'package:design/screens/menu/data/models/category.dart';
import 'package:design/screens/menu/presentation/views/widgets/build_category_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

//lib\screens\menu\presentation\views\widgets\build_category_item.dart
class BuildCategoryList extends StatefulWidget {
  final List<Category> categories;

  const BuildCategoryList({
    super.key,
    required this.categories,
  });

  @override
  State<BuildCategoryList> createState() => _BuildCategoryListState();
}

class _BuildCategoryListState extends State<BuildCategoryList> {
  int selectedIndex = 0; // Initially select first item

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 47.h,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: widget.categories.length,
        padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 3.h),
        itemBuilder: (context, index) {
          final category = widget.categories[index];
          final bool isSelected = index == selectedIndex;

          return GestureDetector(
            onTap: () {
              setState(() {
                selectedIndex = index; // Update selected item
              });
            },
            child: BuildCategoryItem(
              category: category,
              isSelected: isSelected,
            ),
          );
        },
      ),
    );
  }
}
