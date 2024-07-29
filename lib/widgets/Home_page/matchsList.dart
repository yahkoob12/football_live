import 'package:flutter/material.dart';
import 'package:football_live/constants.dart';

class MatchsList extends StatelessWidget {
  const MatchsList({
    super.key,
    required this.ftname,
    required this.stname,
    required this.ftlogo,
    required this.stlogo,
    required this.time,
    required this.date,
  });
  final String ftname, stname, ftlogo, stlogo, date;
  final String time;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
      child: ListView(
        shrinkWrap: true,
        primary: false,
        physics: NeverScrollableScrollPhysics(),
        children: [
          Stack(
            children: [
              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  color: FbackgroundColor,
                ),
                child: Row(
                  children: [
                    Text(
                      ftname,
                      style: TextStyle(
                          fontSize: 16,
                          color: Colors.grey.shade500,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      width: 25,
                    ),
                    Column(
                      children: [
                        Image.asset(
                          ftlogo,
                          width: 45,
                          height: 45,
                        ),
                        Text(
                          'Home',
                          style: TextStyle(fontSize: 12),
                        )
                      ],
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Column(
                      children: [
                        Text(
                          time,
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 18,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          date,
                          style: TextStyle(fontSize: 12),
                        )
                      ],
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Column(
                      children: [
                        Image.asset(
                          stlogo,
                          width: 45,
                          height: 45,
                        ),
                        Text(
                          'Away',
                          style: TextStyle(fontSize: 12),
                        )
                      ],
                    ),
                    SizedBox(
                      width: 25,
                    ),
                    Text(
                      stname,
                      style: TextStyle(
                          fontSize: 16,
                          color: Colors.grey.shade500,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
