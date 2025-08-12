import 'package:design/core/utils/service_locator.dart';

import 'package:design/screens/menu/data/models/repos/home_repo_impl.dart';
import 'package:design/screens/menu/presentation/views/cubit/favorite_cubit/favourite_cubit.dart';
import 'package:design/screens/menu/presentation/views/cubit/food_item_cubit/food_item_cubit.dart';
import 'package:design/screens/menu/presentation/views/cubit/quantity_cubit/quantity_cubit.dart';
import 'package:design/screens/menu/presentation/views/widgets/menu_view_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MenuView extends StatelessWidget {
  const MenuView({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) =>
              FoodItemCubit(getIt.get<HomeRepoImpl>())..fetchFoodItems(),
        ),
        BlocProvider(
          create: (context) => QuantityCubit(),
        ),
        BlocProvider(
          create: (context) => FavoriteCubit(),
        ),
      ],
      child: SafeArea(
        child: Scaffold(
          body: MenuViewBody(),
        ),
      ),
    );
  }
}
