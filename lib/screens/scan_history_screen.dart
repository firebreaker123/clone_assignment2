import 'package:flutter/material.dart';
import '../widgets/scan_card.dart';

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
        //ScanCard(),
        ],
      ),
      backgroundColor: Colors.black,
    );
  }
}
