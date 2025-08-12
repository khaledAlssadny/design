import 'package:dartz/dartz.dart';
import 'package:design/core/errors/failure.dart';
import 'package:design/core/utils/api_service.dart';
import 'package:design/screens/menu/data/models/item_model.dart';
import 'package:design/screens/menu/data/models/repos/home_repo.dart';
import 'package:dio/dio.dart';

class HomeRepoImpl extends HomeRepo {
  final ApiService apiService;

  HomeRepoImpl({required this.apiService});

  @override
  Future<Either<Failure, List<ItemModel>>> fetchFoodItems() async {
    try {
      final response = await apiService.get(endPoint: 'items');

      // Since we know the API returns a List directly
      if (response is! List) {
        return Left(ServerFailure('Invalid response format: expected array'));
      }

      final List<dynamic> itemsList = response;

      if (itemsList.isEmpty) {
        print("⚠️ Items list is empty");
        return Left(ServerFailure('No items found in response'));
      }

      // Convert each item to ItemModel
      final List<ItemModel> items = [];

      for (int i = 0; i < itemsList.length; i++) {
        final item = itemsList[i];
        if (item is Map<String, dynamic>) {
          try {
            final itemModel = ItemModel.fromJson(item);
            items.add(itemModel);
            if (i < 3) {
              // Log first 3 items for debugging
              print("✅ Parsed item ${i + 1}: ${itemModel.name}");
            }
          } catch (e) {
            print("❌ Error parsing item ${i + 1}: $e");
            // Continue with other items instead of failing completely
          }
        } else {
          print("⚠️ Item ${i + 1} is not a valid Map, skipping");
        }
      }

      if (items.isEmpty) {
        print("❌ No valid items could be parsed");
        return Left(ServerFailure('No valid items found'));
      }

      print(
          "✅ Successfully parsed ${items.length} out of ${itemsList.length} items");
      return Right(items);
    } catch (e) {
      print("💥 Error occurred: $e");
      print("🔍 Error type: ${e.runtimeType}");

      if (e is DioException) {
        print("🌐 DioException details:");
        print("   Message: ${e.message}");
        print("   Status code: ${e.response?.statusCode}");
        print("   Response data: ${e.response?.data}");
        return Left(ServerFailure.fromDiorError(e));
      } else {
        print("🔥 Unexpected error: $e");
        return Left(ServerFailure('An unexpected error occurred: $e'));
      }
    }
  }
}
