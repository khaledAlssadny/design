import 'package:dartz/dartz.dart';
import 'package:design/core/errors/failure.dart';
import 'package:design/screens/menu/data/models/item_model.dart';

abstract class HomeRepo {
  Future<Either<Failure, List<ItemModel>>> fetchFoodItems();
}
