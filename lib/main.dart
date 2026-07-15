import 'package:flutter/material.dart';
import '../screens/wishlist_screen.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          //automaticallyImplyLeading: false,
          title: Center(
            child: Text(
              "Wishlist",
              style: TextStyle(
                color: Color.fromARGB(255, 255, 255, 255),
                fontSize: 23,
              ),
            ),
          ),
          backgroundColor: Color.fromARGB(255, 0, 0, 0),
        ),
        body: Center(child: WishlistScreen()),
        backgroundColor: Color.fromARGB(255, 0, 0, 0),
      ),
    );
  }
}


