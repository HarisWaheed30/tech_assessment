import 'package:flutter/material.dart';

class ProductCard extends StatelessWidget {
  final String title;

  const ProductCard({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          Expanded(child: Container(color: Colors.grey.shade300)),
          Padding(padding: const EdgeInsets.all(8), child: Text(title)),
        ],
      ),
    );
  }
}
