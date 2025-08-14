import 'package:design/screens/menu/data/models/category.dart';
import 'package:design/screens/menu/presentation/views/cubit/food_item_cubit/food_item_cubit.dart';
import 'package:design/screens/menu/presentation/views/cubit/food_item_cubit/food_item_state.dart';
import 'package:design/screens/menu/presentation/views/widgets/build_app_bar.dart';
import 'package:design/screens/menu/presentation/views/widgets/build_category_list.dart';
import 'package:design/screens/menu/presentation/views/widgets/build_item_card.dart';
import 'package:design/screens/menu/presentation/views/widgets/build_section_header.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MenuViewBody extends StatelessWidget {
  const MenuViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Category> categories = [
      Category(name: 'Sandwiches', image: 'assets/images/sand.png'),
      Category(name: 'Limited Time Offers', image: 'assets/images/meal.png'),
      Category(name: 'Star Box Meals', image: 'assets/images/meal.png'),
      Category(name: 'Family & Shared Meals', image: 'assets/images/meal.png'),
      Category(name: 'Chicken Meals', image: 'assets/images/meal.png'),
      Category(name: 'Kids Meals', image: 'assets/images/meal.png'),
      Category(name: 'Sides And Desserts', image: 'assets/images/meal.png'),
      Category(name: 'Beverages', image: 'assets/images/meal.png'),
    ];

    return BlocBuilder<FoodItemCubit, FoodItemState>(
      builder: (context, state) {
        if (state is FoodItemStateSuccess) {
          return Scaffold(
            body: SafeArea(
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const BuildAppBar(),
                    SizedBox(height: 10.h),
                    BuildCategoryList(categories: categories),
                    SizedBox(height: 25.h),
                    BuildSectionHeader(
                        title: "Sandwiches",
                        itemCount: state.items.length.toString()),
                    SizedBox(height: 30.h),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 16.h),
                      child: Column(
                        children: state.items.asMap().entries.map((entry) {
                          // final index = entry.key;
                          final item = entry.value;
                          return Padding(
                            padding: EdgeInsets.only(bottom: 20.h),
                            child: BuildFoodItemCard(item: item),
                          );
                        }).toList(),
                      ),
                    ),
                    // Add some bottom padding so content doesn't hide behind nav bar
                    SizedBox(height: 20.h),
                  ],
                ),
              ),
            ),
          );
        } else if (state is FoodItemStateLoading) {
          return const Scaffold(
            body: Center(
              child: CircularProgressIndicator(),
            ),
          );
        } else {
          return const Scaffold(
            body: Center(
              child: CircularProgressIndicator(),
            ),
          );
        }
      },
    );
  }
}
