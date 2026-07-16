import 'package:flutter/material.dart';
import 'package:clone_assignment2/data/dummy_data.dart';

class ProductGridCard extends StatelessWidget {
  const ProductGridCard({
    required this.productNameSnack,
    required this.indexSnack,
    super.key,
  });

  final String productNameSnack;
  final int indexSnack;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        var gridSnack = SnackBar(
          content: Text(productNameSnack),
          backgroundColor: Color.fromARGB(0, 43, 57, 253),
          duration: Duration(seconds: 1),
        );
        ScaffoldMessenger.of(context).showSnackBar(gridSnack);
      },
      child: Image.asset(
        wishlistProducts[indexSnack].imageName,
        fit: BoxFit.cover,
      ),
    );
  }
}
