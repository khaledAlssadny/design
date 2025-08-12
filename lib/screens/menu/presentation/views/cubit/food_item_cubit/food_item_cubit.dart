import 'package:design/screens/menu/data/models/repos/home_repo.dart';
import 'package:design/screens/menu/presentation/views/cubit/food_item_cubit/food_item_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FoodItemCubit extends Cubit<FoodItemState> {
  FoodItemCubit(this.homeRepo) : super(FoodItemStateInitial());

  final HomeRepo homeRepo;

  Future<void> fetchFoodItems() async {
    emit(FoodItemStateLoading());
    var result = await homeRepo.fetchFoodItems();
    result.fold((failure) {
      emit(FoodItemStateFailure(failure.errMessage));
    }, (items) {
      emit(FoodItemStateSuccess(items));
    });
  }
}
