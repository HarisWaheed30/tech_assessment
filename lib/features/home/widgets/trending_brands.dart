import 'package:flutter/material.dart';

class TrendingBrands extends StatelessWidget {
  const TrendingBrands({super.key});

  final List<String> brands = const [
    "Alexander Wang",
    "Balenciaga",
    "Gucci",
    "Prada",
    "Versace",
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 90,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: brands.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(left: 16),
            child: Column(
              children: [
                const CircleAvatar(radius: 25, backgroundColor: Colors.grey),
                const SizedBox(height: 6),
                Text(brands[index], style: const TextStyle(fontSize: 12)),
              ],
            ),
          );
        },
      ),
    );
  }
}
