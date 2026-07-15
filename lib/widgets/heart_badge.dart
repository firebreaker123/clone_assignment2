import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:clone_assignment2/data/dummy_data.dart';

class HeartBadge extends StatefulWidget {
  const HeartBadge({required this.heartObject, super.key});

  final ProductImage heartObject;

  @override
  HeartBadgeState createState() => HeartBadgeState();
}

class HeartBadgeState extends State<HeartBadge> {
  void changeHeartState() {
    setState(() {
      widget.heartObject.heartState = !(widget.heartObject.heartState);
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        changeHeartState();
      },
      child: Icon(
        (widget.heartObject.heartState)
            ? CupertinoIcons.heart_fill
            : CupertinoIcons.heart,
        color: (widget.heartObject.heartState)
            ? Color.fromARGB(255, 200, 255, 0)
            : Color.fromARGB(255, 255, 255, 255),
      ),
    );
  }
}

class HeartSnackBar extends StatelessWidget {
  const HeartSnackBar({
    required this.snackState,
    this.heartColor = const Color.fromARGB(255, 200, 255, 0),
    super.key,
  });

  final bool snackState;
  final Color heartColor;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
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
      ),
    );
  }
}

/* GestureDetector(
        onTap: () {
          var menuSnack = SnackBar(
            content: Text(headerName),
            backgroundColor: Color.fromARGB(255, 70, 51, 2),
            duration: Duration(seconds: 1),
          );
          ScaffoldMessenger.of(context).showSnackBar(menuSnack);
        },
        child: HeaderMenuRow(
          headerName: headerName,
          bottomLeftCorner: bottomLeftCorner,
          bottomRightCorner: bottomRightCorner,
          endTrail: endTrail,
          endColor: endColor,
        ),*/

// CupertinoIcons.heart
// CupertinoIcons.heart_fill
/* Icon(
          CupertinoIcons.heart_fill,
          color: Color.fromARGB(255, 255, 255, 255),
          size: 50,
        ), 
        
Scaffold(body: Text("${widget.heartState}",),);
        */
