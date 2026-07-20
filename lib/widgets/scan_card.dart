import 'package:flutter/material.dart';

class ScanCard extends StatelessWidget {
  const ScanCard({required this.imageFile, required this.cardDate, super.key});

  final String imageFile;
  final String cardDate;

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 16/9,
      child: ClipRRect(
        clipBehavior: Clip.hardEdge,
        borderRadius: BorderRadius.circular(20),
        child: GestureDetector(
          onTap: () {
            var cardSnack = SnackBar(
              content: Text(cardDate, style: TextStyle(color: Colors.white)),
              backgroundColor: Color.fromARGB(255, 42, 0, 110),
              duration: Duration(seconds: 1),
            );
            ScaffoldMessenger.of(context).showSnackBar(cardSnack);
          },
          child: Stack(
            children: [
              Image.asset(imageFile, fit: BoxFit.fill),
              DateBadge(date: cardDate),
            ],
          ),
        ),
      ),
    );
  }
}

class DateBadge extends StatelessWidget {
  const DateBadge({required this.date, super.key});

  final String date;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomLeft,
      child: Padding(
        padding: EdgeInsets.only(bottom: 15, left: 13),
        child: ClipRRect(
          borderRadius: BorderRadiusGeometry.circular(20),
          child: Container(
            color: Color.fromARGB(169, 104, 104, 104),
            height: 30,
            width: 100,
            child: Center(
              child: Text(
                date,
                style: TextStyle(color: Colors.white, fontSize: 15),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

/* TextButton(
      onPressed: () {
        var cardSnack = SnackBar(
          content: Text(cardDate, style: TextStyle(color: Colors.white)),
          backgroundColor: Color.fromARGB(255, 42, 0, 110),
          duration: Duration(seconds: 1),
        );
        ScaffoldMessenger.of(context).showSnackBar(cardSnack);
      },
      child: AspectRatio(
       aspectRatio: 16/9,
       child: ClipRRect(
        borderRadius: BorderRadius.circular(60),
        child: Image.asset(imageFile, fit: BoxFit.cover),
      ),
      ),
    );*/

/* return AspectRatio(
      aspectRatio: 16/9,
    child: TextButton(
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
      child: ClipRRect(
      borderRadius: BorderRadius.circular(60),
      child: Image.asset(
        imageFile,
        fit: BoxFit.cover,
      ),
      ),
    ),
    ); */

/* ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: ProductGridCard(
                              productNameSnack:
                                  wishlistProducts[index].productName,
                              indexSnack: index,
                            ),
                          ), */

// hotCheetosDillPickle.imageName

/* Image.asset(
        wishlistProducts[indexSnack].imageName,
        fit: BoxFit.cover,
      ) */

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
