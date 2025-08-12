import 'package:flutter/material.dart';

class BuildCustomizeButton extends StatelessWidget {
  final VoidCallback? onPressed;

  const BuildCustomizeButton({
    super.key,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Row(
        children: [
          const Text(
            "Customize",
            style: TextStyle(
              color: Color(0xFF9A3324),
              fontWeight: FontWeight.w900,
              fontFamily: 'TabletGothic',
            ),
            textAlign: TextAlign.left,
          ),
          const SizedBox(width: 5),
          Container(
            width: 15,
            height: 15,
            decoration: BoxDecoration(
              color: const Color(0xFF9A3324),
              borderRadius: BorderRadius.circular(30),
              border: Border.all(color: Colors.white, width: .005),
            ),
            child: const Icon(
              Icons.expand_more,
              size: 12,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
