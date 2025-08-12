import 'package:flutter/material.dart';

class BuildAppBar extends StatelessWidget {
  const BuildAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
      child: Row(
        children: [
          const Text(
            "Explore Menu",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              fontFamily: 'OperaWestern',
            ),
          ),
          const Spacer(),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.search, size: 35),
          ),
        ],
      ),
    );
  }
}
