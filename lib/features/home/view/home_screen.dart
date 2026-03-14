import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../widgets/product_card.dart';
import '../widgets/search_bar.dart';
import '../viewmodel/product_provider.dart';

class HomeScreen extends ConsumerWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final productState = ref.watch(productProvider);

    return Scaffold(
      appBar: AppBar(title: const Text("Shop")),

      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16),
            child: const SearchBarWidget(),
          ),

          Expanded(
            child: productState.when(
              loading: () => const Center(child: CircularProgressIndicator()),

              error: (err, _) => Center(child: Text(err.toString())),

              data: (products) {
                return GridView.builder(
                  padding: const EdgeInsets.symmetric(horizontal: 16),

                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 12,
                    mainAxisSpacing: 12,
                    childAspectRatio: 0.75,
                  ),

                  itemCount: products.length,

                  itemBuilder: (context, index) {
                    final product = products[index];

                    return ProductCard(
                      title: product.title,
                      image: product.image,
                      price: product.price,
                    );
                  },
                );
              },
            ),
          ),
        ],
      ),

      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.store), label: "Shop"),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            label: "Cart",
          ),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
        ],
      ),
    );
  }
}
