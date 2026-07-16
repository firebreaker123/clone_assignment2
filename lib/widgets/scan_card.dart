import 'package:flutter/material.dart';
import 'package:clone_assignment2/data/dummy_data.dart';

class ScanCard extends StatelessWidget{
  const ScanCard({required this.cardDate, super.key});

  final String cardDate;

  @override
  Widget build(BuildContext context) {
    return FilledButton(
      onPressed: () {
        var cardSnack = SnackBar(
          content: Text(
            cardDate,
            style: TextStyle(
              color: Colors.white,  
            ),
          ),
          backgroundColor: Color.fromARGB(255, 42, 0, 110),
          duration: Duration(seconds: 1),
        );
        ScaffoldMessenger.of(context).showSnackBar(cardSnack);
      },
      child: Container(

      ),
    );
  }
}

/* onTap: () {
        var heartSnack = SnackBar(
          content: Text("Removed from wishlist"),
          backgroundColor: Color.fromARGB(0, 43, 57, 253),
          duration: Duration(seconds: 1),
        );
        ScaffoldMessenger.of(context).showSnackBar(heartSnack);
      },
      child: Icon(
        (snackState) ? CupertinoIcons.heart_fill : CupertinoIcons.heart,
        color: heartColor,
      ),*/