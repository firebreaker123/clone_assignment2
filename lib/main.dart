import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
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
        bottomNavigationBar: Container(
          decoration: BoxDecoration(
            border: Border(
              top: BorderSide(
                width: 1,
                color: const Color.fromARGB(255, 68, 68, 68),
                style: BorderStyle.solid,
              ),
            ),
          ),
          child: BottomAppBar(
            color: Colors.black,
            child: Column(
              children: [
                Center(
                  child: Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Stack(
                          children: [
                            Icon(Icons.home, color: Colors.white, size: 30),
                            Padding(
                              padding: EdgeInsets.only(top: 30, left: 1),
                              child: Text(
                                "Home",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 10,
                                ),
                              ),
                            ),
                          ],
                        ),
                        Stack(
                          children: [
                            Icon(
                              CupertinoIcons.barcode_viewfinder,
                              color: Colors.white,
                              size: 30,
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: 30, left: 3),
                              child: Text(
                                "Scan",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 10,
                                ),
                              ),
                            ),
                          ],
                        ),
                        Stack(
                          children: [
                            Icon(
                              CupertinoIcons.heart,
                              color: Color.fromARGB(255, 200, 255, 0),
                              size: 30,
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: 30, left: 3),
                              child: Text(
                                "Scan",
                                style: TextStyle(
                                  color: Color.fromARGB(255, 200, 255, 0),
                                  fontSize: 10,
                                ),
                              ),
                            ),
                          ],
                        ),
                        Stack(
                          children: [
                            Icon(Icons.person, color: Colors.white, size: 30),
                            Padding(
                              padding: EdgeInsets.only(top: 30, left: 9),
                              child: Text(
                                "My",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 10,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

/* Center(
                  child: Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(right: 20),
                          child: Text(
                            "Home",
                            style: TextStyle(color: Colors.white, fontSize: 10),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(right: 40),
                          child: Text(
                          "Scan",
                          style: TextStyle(color: Colors.white, fontSize: 10),
                        ),
                        ),
                        Text(
                          "Wish",
                          style: TextStyle(
                            color: const Color.fromARGB(255, 200, 255, 0),
                            fontSize: 10,
                          ),
                        ),
                        Text(
                          "My",
                          style: TextStyle(color: Colors.white, fontSize: 10),
                        ),
                      ],
                    ),
                  ),
                ),*/
/*
Padding(
                          padding: EdgeInsets.only(left: 60),
                          child: Icon(
                            Icons.home,
                            color: Colors.white,
                            size: 30,
                          ),
                        ),

                        Padding(
                          padding: EdgeInsets.only(left: 70),
                          child: Icon(
                            CupertinoIcons.barcode_viewfinder,
                            color: Colors.white,
                            size: 30,
                          ),
                        ),

                        Padding(
                          padding: EdgeInsets.only(left: 70),
                          child: Icon(
                            CupertinoIcons.heart,
                            color: Color.fromARGB(255, 200, 255, 0),
                            size: 30,
                          ),
                        ),

                        Padding(
                          padding: EdgeInsets.only(left: 70),
                          child: Icon(
                            CupertinoIcons.person,
                            color: Colors.white,
                            size: 30,
                          ),
                        ), */
/* BottomAppBar(
          color: Colors.black,
          child: Container(
            decoration: BoxDecoration(
              border: Border(
                top: BorderSide(
                  width: 20,
                  color: Colors.white,
                  style: BorderStyle.solid,
                ),
              ),
              color: Colors.black,
            ),
          ),
        ), */

/* Scaffold(
  bottomNavigationBar: BottomAppBar(
    color: Colors.white,
    child: bottomAppBarContents,
  ),
  floatingActionButton: const FloatingActionButton(onPressed: null),
)*/
