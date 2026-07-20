import 'package:flutter/material.dart';
import '../widgets/scan_card.dart';
import 'package:clone_assignment2/data/dummy_data.dart';

class ScanHistoryScreen extends StatelessWidget {
  const ScanHistoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.black,
        title: Text(
          "Scan History",
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
          Expanded(
            child: ListView.builder(
              itemCount: scanHistoryProducts.length,
              itemBuilder: (BuildContext context, int index) {
                return Padding(
                  padding: (index == 0) ? EdgeInsets.only(top: 20, left: 16, right: 16) : EdgeInsets.only(top: 12, left: 16, right: 16),
                  child: ScanCard(
                    imageFile: scanHistoryProducts[index].imageName,
                    cardDate: scanHistoryProducts[index].date,
                  ),
                );
              },
            ),
          ),
        ],
      ),
      backgroundColor: Colors.black,
    );
  }
}

/* ListView.builder(
              itemCount: ingredients.length,
              itemBuilder: (BuildContext context, int index) {
                return Padding(
                  padding: EdgeInsetsGeometry.only(
                    right: 16,
                    left: 16,
                    top: 6,
                    bottom: 6,
                  ),
                  child: ListTile(
                    title: Text(
                      ingredients[index],
                      style: TextStyle(
                        color: Color.fromARGB(255, 255, 255, 255),
                      ),
                    ),
                    tileColor: Color.fromARGB(255, 28, 28, 28),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                );
              },
              //shrinkWrap: true,
            ), */