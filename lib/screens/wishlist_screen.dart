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
              "4 items",
              style: TextStyle(
                color: Color.fromARGB(255, 87, 87, 87),
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
              mainAxisSpacing: 50,
              childAspectRatio: 1,
            ),
            itemCount: wishlistProducts.length,
            itemBuilder: (context, index) {
              return Stack(
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
