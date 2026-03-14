import 'package:flutter/material.dart';
import '/data/models/product_model.dart';

class ProductCard extends StatelessWidget {
  final String title;
  final String image;
  final double price;

  const ProductCard({
    super.key,
    required this.title,
    required this.image,
    required this.price,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 3,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),

      child: Column(
        children: [
          Expanded(child: Image.network(image, fit: BoxFit.cover)),

          Padding(
            padding: const EdgeInsets.all(8),
            child: Text(title, maxLines: 2, overflow: TextOverflow.ellipsis),
          ),

          Padding(
            padding: const EdgeInsets.only(bottom: 8),
            child: Text(
              "\$ $price",
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
        ],
      ),
    );
  }
}
