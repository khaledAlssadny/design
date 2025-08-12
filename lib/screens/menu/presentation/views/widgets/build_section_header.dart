import 'package:flutter/material.dart';

class BuildSectionHeader extends StatelessWidget {
  final String title;
  final String itemCount;
  final VoidCallback? onTap;
  final bool showActionButton;

  const BuildSectionHeader({
    super.key,
    required this.title,
    required this.itemCount,
    this.onTap,
    this.showActionButton = false,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Row(
        children: [
          Expanded(
            child: GestureDetector(
              onTap: onTap,
              child: Row(
                children: [
                  Text(
                    '$title ',
                    style: const TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.w900,
                      fontFamily: 'TabletGothic',
                    ),
                  ),
                  Text(
                    '($itemCount Items)',
                    style: const TextStyle(
                      fontSize: 13,
                      fontFamily: 'TabletGothic',
                    ),
                  ),
                ],
              ),
            ),
          ),
          if (showActionButton)
            IconButton(
              onPressed: onTap,
              icon: const Icon(
                Icons.arrow_forward_ios,
                size: 16,
                color: Colors.grey,
              ),
            ),
        ],
      ),
    );
  }
}
