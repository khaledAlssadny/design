import 'package:flutter_bloc/flutter_bloc.dart';

class FavoriteCubit extends Cubit<Set<int>> {
  FavoriteCubit() : super({});

  void toggleFavorite(int itemId) {
    final updatedFavorites = Set<int>.from(state);
    if (updatedFavorites.contains(itemId)) {
      updatedFavorites.remove(itemId);
    } else {
      updatedFavorites.add(itemId);
    }
    emit(updatedFavorites);
  }
}
