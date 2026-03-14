import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../data/models/product_model.dart';
import '../../../data/repositories/product_repository.dart';

final productProvider = FutureProvider<List<ProductModel>>((ref) async {
  final repo = ProductRepository();
  return repo.getProducts();
});
