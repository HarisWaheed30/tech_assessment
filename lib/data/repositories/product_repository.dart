import '../models/product_model.dart';
import '../services/api_service.dart';

class ProductRepository {
  final ApiService apiService = ApiService();

  Future<List<ProductModel>> getProducts() async {
    final data = await apiService.fetchProducts();

    return data.map<ProductModel>((json) {
      return ProductModel.fromJson(json);
    }).toList();
  }
}
