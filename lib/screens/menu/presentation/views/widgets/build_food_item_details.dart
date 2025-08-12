import 'package:design/screens/menu/data/models/item_model.dart';
import 'package:design/screens/menu/presentation/views/cubit/favorite_cubit/favourite_cubit.dart';
import 'package:design/screens/menu/presentation/views/widgets/build_customize_button.dart';
import 'package:design/screens/menu/presentation/views/widgets/build_price_section.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BuildFoodItemDetails extends StatelessWidget {
  const BuildFoodItemDetails({super.key, required this.item});
  final ItemModel item;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 16, bottom: 16, left: 11, right: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Expanded(
                child: Text(
                  item.name ?? 'Unknown Item',
                  style: const TextStyle(
                    fontFamily: 'TabletGothic',
                    fontWeight: FontWeight.w700,
                    fontSize: 18,
                  ),
                ),
              ),
              BlocBuilder<FavoriteCubit, Set<int>>(
                builder: (context, favorites) {
                  final isFavorite = favorites.contains(item.itemId ?? -1);
                  return IconButton(
                    onPressed: () {
                      if (item.itemId != null) {
                        context
                            .read<FavoriteCubit>()
                            .toggleFavorite(item.itemId!);
                      }
                    },
                    icon: Icon(
                      isFavorite ? Icons.favorite : Icons.favorite_border,
                      color: isFavorite ? Colors.black : Colors.grey,
                    ),
                    constraints: const BoxConstraints(),
                    padding: EdgeInsets.zero,
                  );
                },
              ),
            ],
          ),
          // const SizedBox(height: 8),
          Expanded(
            child: Text(
              item.description ?? 'No description available',
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: const TextStyle(
                fontFamily: 'TabletGothic',
                fontSize: 13,
                color: Color(0xff757575),
              ),
            ),
          ),
          // const SizedBox(height: 12),
          const BuildCustomizeButton(),
          // const SizedBox(height: 12),
          Expanded(
            child: SizedBox(child: BuildPriceSection(item: item)),
          ),
        ],
      ),
    );
  }
}
