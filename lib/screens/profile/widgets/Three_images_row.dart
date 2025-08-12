import 'package:flutter/material.dart';

class ThreeImagesRow extends StatelessWidget {
  const ThreeImagesRow({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 400,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          _buildCircleItem(
            imagePath: "assets/images/aa.png",
            title: "Favorites",
            onTap: () {
              print("Image 1 tapped");
            },
          ),
          _buildCircleItem(
            imagePath: "assets/images/bb.png",
            title: "Rewards",
            onTap: () {
              print("Image 2 tapped");
            },
          ),
          _buildCircleItem(
            imagePath: "assets/images/cc.png",
            title: "Orders",
            onTap: () {
              print("Image 3 tapped");
            },
          ),
        ],
      ),
    );
  }

  Widget _buildCircleItem({
    required String imagePath,
    required String title,
    required VoidCallback onTap,
  }) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(30),
      child: Column(
        children: [
          Container(
            height: 80,
            width: 80,
            decoration: BoxDecoration(
              // color: const Color.fromARGB(246, 255, 247, 0), // #F6B31812
              shape: BoxShape.circle,
            ),
            child: Image.asset(
              imagePath,
              fit: BoxFit.fill,
            ),
          ),
          const SizedBox(height: 5),
          Text(
            title,
            style: const TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.w500,
              fontFamily: 'TabletGothic',
            ),
          ),
        ],
      ),
    );
  }
}
