import 'package:flutter/material.dart';

class ScanHistoryScreen extends StatelessWidget {
  const ScanHistoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FilledButton(
        onPressed: () {
          Navigator.pop(context);
        },
        child: Text("WishlistScreen"),
      ),
    );
  }
}
