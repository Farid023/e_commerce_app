import 'package:dio/dio.dart';
import 'package:e_commerce_app/data/models/category_model.dart';
import 'package:e_commerce_app/data/models/product_model.dart';

import '../endpoints.dart';

class FakeStoreService {
  FakeStoreService._();

  static Future<List<Categories>> getCategoryList() async {
    try {
      final response = await Dio().get(Endpoints.categories);
      if (response.statusCode == 200) {
        List<Categories> categoryList = List<Categories>.from(
            response.data.map((category) => Categories(category: category)));
        return categoryList;
      } else {
        throw Exception('Failed to load categories: ${response.statusCode}');
      }
    } catch (e) {
      throw Exception(e);
    }
  }

  static Future<List<Product>> getProducts() async {
    try {
      final response = await Dio().get(Endpoints.products);
      print(response);
      if (response.statusCode == 200) {
        List<dynamic> json = response.data;
        List<Product> products =
            json.map((product) => Product.fromJson(product)).toList();
        return products;
      } else {
        throw Exception('Failed to load categories: ${response.statusCode}');
      }
    } catch (e) {
      throw Exception(e);
    }
  }
}
