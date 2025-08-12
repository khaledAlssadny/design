import 'package:flutter_bloc/flutter_bloc.dart';
import 'quantity_state.dart';

class QuantityCubit extends Cubit<QuantityState> {
  QuantityCubit() : super(const QuantityState());

  void increment(int itemId) {
    final newQuantities = Map<int, int>.from(state.quantities);
    newQuantities[itemId] = (newQuantities[itemId] ?? 0) + 1;
    emit(state.copyWith(quantities: newQuantities));
  }

  void decrement(int itemId) {
    final newQuantities = Map<int, int>.from(state.quantities);
    if ((newQuantities[itemId] ?? 0) > 0) {
      newQuantities[itemId] = newQuantities[itemId]! - 1;
      emit(state.copyWith(quantities: newQuantities));
    }
  }
}
