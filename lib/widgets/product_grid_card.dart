import 'package:flutter/material.dart';

class ProductGridCard extends StatelessWidget{
  const ProductGridCard({required this.productNameSnack,super.key});

  final String productNameSnack;

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
    );
  }
}