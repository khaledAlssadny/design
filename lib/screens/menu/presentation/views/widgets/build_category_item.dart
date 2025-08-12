import 'package:design/screens/menu/data/models/category.dart';
import 'package:flutter/material.dart';

class BuildCategoryItem extends StatelessWidget {
  final Category category;
  final bool isSelected;

  const BuildCategoryItem({
    super.key,
    required this.category,
    required this.isSelected,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(2, 3, 10, 3),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 12),
        decoration: BoxDecoration(
          color: isSelected ? const Color(0xFFF6B318) : Colors.white,
          borderRadius: BorderRadius.circular(29),
          border: Border.all(color: const Color(0xFFF6B318)),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              width: 30,
              height: 30,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  image: AssetImage(category.image),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const SizedBox(width: 6),
            Text(
              category.name,
              style: const TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w600,
              ),
              overflow: TextOverflow.ellipsis,
            ),
            const SizedBox(width: 12),
          ],
        ),
      ),
    );
  }
}
