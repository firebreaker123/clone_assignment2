import 'package:clone_assignment2/data/dummy_data.dart';
import 'package:flutter/material.dart';
import '../screens/scan_history_screen.dart';
import '../widgets/heart_badge.dart';

class WishlistScreen extends StatelessWidget {
  const WishlistScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        FilledButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => ScanHistoryScreen()),
            );
          },
          child: Text("ScanHistoryPage"),
        ),
        Align(
          alignment: Alignment.centerLeft,
          child: Padding(
            padding: EdgeInsets.only(left: 16, top: 8),
            child: Text(
              (wishlistProducts.length == 1)
                  ? "${wishlistProducts.length} item"
                  : "${wishlistProducts.length} items",
              style: TextStyle(
                color: Color.fromARGB(255, 124, 124, 124),
                fontSize: 14,
              ),
            ),
          ),
        ),
        Expanded(
          child: GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 20,
              mainAxisSpacing: 40,
              childAspectRatio: 0.8,
            ),
            itemCount: wishlistProducts.length,
            itemBuilder: (context, index) {
              return Column(
                children: [
                  Expanded(
                    child: Stack(
                      fit: StackFit.expand,
                      children: [
                        Padding(
                          padding: (index % 2 == 0)
                              ? EdgeInsets.only(left: 20, top: 20)
                              : EdgeInsets.only(right: 20, top: 20),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: Image.asset(
                              wishlistProducts[index].imageName,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Positioned(
                          //padding: (index % 2 == 0) ? EdgeInsets.only(right: 15, bottom: 140,) : EdgeInsets.only(right: 35, bottom: 140,),
                          top: 40,
                          right: (index % 2 == 0) ? 15 : 35,
                          child: Align(
                            alignment: Alignment.centerRight,
                            child: HeartSnackBar(snackState: true),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: (index % 2 == 0)
                          ? EdgeInsets.only(left: 20, top: 20)
                          : EdgeInsets.only(top: 20,),
                      child: Text(
                        wishlistProducts[index].productName,
                        style: TextStyle(
                          color: Color.fromARGB(255, 255, 255, 255),
                          fontSize: 15,
                        ),
                      ),
                    ),
                  ),
                ],
              );
            },
          ),
        ),
        HeartBadge(heartObject: wishlistProducts[0]),
        HeartSnackBar(snackState: false),
      ],
    );
  }
}
