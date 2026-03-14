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
      elevation: 2,

      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(14)),

      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: ClipRRect(
              borderRadius: const BorderRadius.vertical(
                top: Radius.circular(14),
              ),

              child: Image.network(
                image,
                fit: BoxFit.cover,
                width: double.infinity,
              ),
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(8),
            child: Text(title, maxLines: 2, overflow: TextOverflow.ellipsis),
          ),

          Padding(
            padding: const EdgeInsets.only(left: 8, bottom: 8),
            child: Text(
              "\$$price",
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
        ],
      ),
    );
  }
}
