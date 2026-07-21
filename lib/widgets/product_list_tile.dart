import 'package:flutter/material.dart';
import '../widgets/heart_badge.dart';
import '../data/dummy_data.dart';

class ProductListTile extends StatelessWidget {
  const ProductListTile({required this.products, super.key});

  final ProductImage products;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Stack(
          children: [
            ProductImageSnack(
              snackFile: products.imageName,
              snackName: products.productName,
            ),
            Padding(
              padding: EdgeInsets.only(left: 68, top: 65),
              child: HeartBadge(heartObject: products),
            ),
          ],
        ),
        ProductNameSnack(snackName: products.productName),
      ],
    );
  }
}

class ProductImageSnack extends StatelessWidget {
  const ProductImageSnack({
    required this.snackFile,
    required this.snackName,
    super.key,
  });

  final String snackFile;
  final String snackName;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 10, left: 16),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(8),
        child: GestureDetector(
          onTap: () {
            var rowSnack = SnackBar(
              content: Text(snackName, style: TextStyle(color: Colors.white)),
              backgroundColor: Color.fromARGB(255, 50, 12, 68),
              duration: Duration(seconds: 1),
            );
            ScaffoldMessenger.of(context).showSnackBar(rowSnack);
          },
          child: Image.asset(
            snackFile,
            fit: BoxFit.cover,
            height: 80,
            width: 80,
          ),
        ),
      ),
    );
  }
}

class ProductNameSnack extends StatelessWidget {
  const ProductNameSnack({required this.snackName, super.key});

  final String snackName;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: EdgeInsets.only(top: 10),
        child: GestureDetector(
          onTap: () {
            var rowSnack = SnackBar(
              content: Text(snackName, style: TextStyle(color: Colors.white)),
              backgroundColor: Color.fromARGB(255, 50, 12, 68),
              duration: Duration(seconds: 1),
            );
            ScaffoldMessenger.of(context).showSnackBar(rowSnack);
          },
          child: Container(
            height: 80,
            width: double.infinity,
            color: Colors.transparent,
            child: Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.only(left: 16),
                child: Text(
                  snackName,
                  style: TextStyle(color: Colors.white, fontSize: 16),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

/* onTap: () {
            var cardSnack = SnackBar(
              content: Text(cardDate, style: TextStyle(color: Colors.white)),
              backgroundColor: Color.fromARGB(255, 42, 0, 110),
              duration: Duration(seconds: 1),
            );
            ScaffoldMessenger.of(context).showSnackBar(cardSnack);
          },
          child: Stack(
            children: [
              Image.asset(
                imageFile,
                fit: BoxFit.cover,
                width: double.infinity,
              ),
              DateBadge(date: cardDate),
            ],
          ),*/
