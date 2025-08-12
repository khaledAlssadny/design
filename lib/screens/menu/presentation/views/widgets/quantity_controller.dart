import 'package:design/screens/menu/presentation/views/cubit/quantity_cubit/quantity_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../cubit/quantity_cubit/quantity_cubit.dart';

class BuildQuantityController extends StatelessWidget {
  final int itemId;

  const BuildQuantityController({super.key, required this.itemId});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<QuantityCubit, QuantityState>(
      builder: (context, state) {
        final quantity = state.quantities[itemId] ?? 0;

        if (quantity == 0) {
          return SizedBox(
            height: 40,
            child: ElevatedButton.icon(
              onPressed: () {
                context.read<QuantityCubit>().increment(itemId);
              },
              icon: const Icon(Icons.add, size: 25, color: Colors.black),
              label: const Text(
                'Add To Cart',
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontFamily: 'TabletGothic',
                  fontSize: 14,
                  color: Colors.black,
                ),
              ),
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xffF6B318),
                padding: const EdgeInsets.symmetric(horizontal: 12),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(6),
                ),
                elevation: 0,
              ),
            ),
          );
        } else {
          return SizedBox(
            width: MediaQuery.of(context).size.width, // or any max width
            height: 40,
            child: Row(
              children: [
                GestureDetector(
                  onTap: () {
                    context.read<QuantityCubit>().decrement(itemId);
                  },
                  child: Image.asset(
                    'assets/images/remove.png',
                    width: 50,
                    height: 50,
                    fit: BoxFit.cover,
                  ),
                ),
                Expanded(
                  child: Center(
                    child: Text(
                      quantity.toString(),
                      style: const TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 15,
                      ),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    context.read<QuantityCubit>().increment(itemId);
                  },
                  child: Image.asset(
                    'assets/images/plus.png',
                    width: 50,
                    height: 50,
                    fit: BoxFit.cover,
                  ),
                ),
              ],
            ),
          );
        }
      },
    );
  }
}
