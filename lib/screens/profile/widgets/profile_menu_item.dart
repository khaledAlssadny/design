import 'package:flutter/material.dart';

class ProfileMenuItem extends StatelessWidget {
  final String imagePath;
  final String title;
  final VoidCallback onTap;

  const ProfileMenuItem({
    super.key,
    required this.imagePath,
    required this.title,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
        child: Row(
          children: [
            Image.asset(
              imagePath,
              width: 22,
              height: 22,
              fit: BoxFit.contain,
            ),
            const SizedBox(width: 16),
            Expanded(
              child: Text(
                title,
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: title == 'Delete my Account'
                        ? Color(0xFF9A3324)
                        : Colors.black),
              ),
            ),
            const Icon(Icons.arrow_forward_ios, size: 12),
          ],
        ),
      ),
    );
  }
}
