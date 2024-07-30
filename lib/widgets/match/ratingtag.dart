import 'package:flutter/material.dart';
import 'package:football_live/widgets/match/ratingcount.dart';

class RatingTag extends StatelessWidget {
  const RatingTag({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              decoration: BoxDecoration(
                color: Colors.amber,
                borderRadius: BorderRadius.circular(15),
              ),
              margin: EdgeInsets.only(right: 10),
              padding: EdgeInsets.symmetric(
                horizontal: 15,
                vertical: 5,
              ),
              child: Text(
                'Stats',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 14,
                  color: Colors.white,
                ),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                color: Colors.grey[100],
                borderRadius: BorderRadius.circular(15),
              ),
              margin: EdgeInsets.only(right: 10),
              padding: EdgeInsets.symmetric(
                horizontal: 15,
                vertical: 5,
              ),
              child: Text(
                'H2H',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 14,
                  color: Colors.grey[800],
                ),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                color: Colors.grey[100],
                borderRadius: BorderRadius.circular(15),
              ),
              margin: EdgeInsets.only(right: 10),
              padding: EdgeInsets.symmetric(
                horizontal: 15,
                vertical: 5,
              ),
              child: Text(
                'Table',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 14,
                  color: Colors.grey[800],
                ),
              ),
            ),
          ],
        ),
        SizedBox(
          height: 20,
        ),
        RatingCount(
          name: 'Shots On Target',
          num1: 3,
          num2: 6,
          per1: 110,
          per2: 60,
        ),
        SizedBox(
          height: 40,
        ),
        RatingCount(
          name: 'Goals',
          num1: 2,
          num2: 0,
          per1: 80,
          per2: 170,
        ),
        SizedBox(
          height: 40,
        ),
        RatingCount(
          name: 'Possession',
          num1: 34,
          num2: 66,
          per1: 100,
          per2: 80,
        ),
        SizedBox(
          height: 40,
        ),
        RatingCount(
          name: 'Yellow Card',
          num1: 0,
          num2: 1,
          per1: 170,
          per2: 150,
        ),
        SizedBox(
          height: 40,
        ),
        RatingCount(
          name: 'Red Card',
          num1: 1,
          num2: 0,
          per1: 150,
          per2: 170,
        ),
        SizedBox(
          height: 40,
        ),
        RatingCount(
          name: 'Corner Kicks',
          num1: 8,
          num2: 6,
          per1: 60,
          per2: 90,
        ),
        SizedBox(
          height: 40,
        ),
        RatingCount(
          name: 'Red Card',
          num1: 1,
          num2: 0,
          per1: 150,
          per2: 170,
        ),
        SizedBox(
          height: 40,
        ),
        RatingCount(
          name: 'Red Card',
          num1: 1,
          num2: 0,
          per1: 150,
          per2: 170,
        ),
      ],
    );
  }
}
