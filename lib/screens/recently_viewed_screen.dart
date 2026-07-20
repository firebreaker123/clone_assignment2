import 'package:flutter/material.dart';

class RecentlyViewedScreen extends StatelessWidget {
  const RecentlyViewedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.black,
        title: Text(
          "Recently Viewed",
          style: TextStyle(color: Colors.white, fontSize: 20),
        ),
        leading: Padding(
          padding: EdgeInsets.only(left: 10),
          child: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(
              Icons.arrow_back_ios,
              color: Color.fromARGB(255, 255, 255, 255),
              size: 25,
            ),
          ),
        ),
      ),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: EdgeInsets.only(left: 16, top: 25),
                child: Text(
                  "14 items",
                  style: TextStyle(
                    color: Color.fromARGB(255, 180, 180, 180),
                    fontSize: 14,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(right: 4, top: 25),
                child: TextButton(
                  onPressed: () {
                    var editSnack = SnackBar(
                      content: Text(
                        "Edit Mode",
                        style: TextStyle(color: Colors.white54),
                      ),
                      backgroundColor: const Color.fromARGB(255, 12, 48, 110),
                      duration: Duration(seconds: 1),
                    );
                    ScaffoldMessenger.of(context).showSnackBar(editSnack);
                  },
                  child: Text(
                    "Edit",
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
