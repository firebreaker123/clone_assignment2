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
          Padding(
            padding: EdgeInsets.only(top: 20, left: 16, right: 16),
            child: ScanCard(
              imageFile: hotCheetosDillPickle.imageName,
              cardDate: hotCheetosDillPickle.date,
            ),
          ),
        ],
      ),
      backgroundColor: Colors.black,
    );
  }
}

//hotCheetosDillPickle.imageName
