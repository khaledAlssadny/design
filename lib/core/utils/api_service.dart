import 'package:dio/dio.dart';

class ApiService {
  final Dio _dio;

  final baseUrl = "https://fakerestaurantapi.runasp.net/api/Restaurant/";

  ApiService(this._dio) {
    // Add interceptors for better debugging
    _dio.interceptors.add(LogInterceptor(
      requestBody: true,
      responseBody: true,
      requestHeader: false,
      responseHeader: false,
    ));
  }

  Future<dynamic> get({required String endPoint}) async {
    try {
      print("Making request to: $baseUrl$endPoint");
      var response = await _dio.get('$baseUrl$endPoint');
      print("Response status: ${response.statusCode}");
      print("Response data type: ${response.data.runtimeType}");

      // Return the data as-is (could be List or Map)
      return response.data;
    } on DioException catch (e) {
      print("DioException occurred: ${e.message}");
      print("Response data: ${e.response?.data}");
      print("Status code: ${e.response?.statusCode}");
      rethrow;
    } catch (e) {
      print("Unexpected error in ApiService: $e");
      rethrow;
    }
  }
}
