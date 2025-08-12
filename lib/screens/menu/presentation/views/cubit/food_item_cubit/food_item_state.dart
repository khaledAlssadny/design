import 'package:design/screens/menu/data/models/item_model.dart';
import 'package:equatable/equatable.dart';

abstract class FoodItemState extends Equatable {
  const FoodItemState();

  @override
  List<Object> get props => [];
}

class FoodItemStateInitial extends FoodItemState {}

class FoodItemStateLoading extends FoodItemState {}

class FoodItemStateFailure extends FoodItemState {
  final String errMessage;

  const FoodItemStateFailure(this.errMessage);
}

class FoodItemStateSuccess extends FoodItemState {
  final List<ItemModel> items;

  const FoodItemStateSuccess(this.items);
}
