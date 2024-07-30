import 'package:flutter/material.dart';
import 'package:football_live/constants.dart';
import 'package:football_live/screen/match/match_screen.dart';

class HomeBanner extends StatelessWidget {
  const HomeBanner({
    super.key,
    required this.stdiumName,
    required this.week,
    required this.ftlogo,
    required this.stlogo,
    required this.ftName,
    required this.stName,
    required this.time,
    required this.ftgoal,
    required this.stgoal,
  });
  final String stdiumName, ftlogo, stlogo, ftName, stName;
  final int time, ftgoal, stgoal, week;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => MatchScreen(),
            ));
      },
      child: Container(
        height: 250,
        margin: EdgeInsets.only(right: 10),
        padding: EdgeInsets.symmetric(vertical: 30, horizontal: 30),
        decoration: BoxDecoration(
          color: FboxColor,
          borderRadius: BorderRadius.circular(20),
          image: DecorationImage(
            image: AssetImage('assets/images/image_1.png'),
            opacity: 0.3,
            alignment: Alignment.bottomLeft,
            fit: BoxFit.fill,
          ),
        ),
        child: Column(
          children: [
            Text(
              stdiumName,
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
              ),
            ),
            SizedBox(height: 5),
            Text(
              "Week $week",
              style: TextStyle(color: Colors.grey, fontSize: 12),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Column(
                  children: [
                    Image.asset(
                      ftlogo,
                      width: 90,
                      height: 90,
                    ),
                    Text(
                      ftName,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.normal),
                    ),
                    SizedBox(height: 5),
                    Text(
                      'Home',
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
                SizedBox(width: 20),
                Column(
                  children: [
                    Text(
                      "$time'",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                      ),
                    ),
                    SizedBox(height: 10),
                    Text.rich(
                      TextSpan(
                        children: [
                          TextSpan(
                            text: "$ftgoal : ",
                            style: TextStyle(
                              fontSize: 36,
                              color: Colors.white,
                            ),
                          ),
                          TextSpan(
                            text: "$stgoal",
                            style: TextStyle(
                              fontSize: 36,
                              color: Colors.grey,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  width: 20,
                ),
                Column(
                  children: [
                    Image.asset(
                      stlogo,
                      width: 90,
                      height: 90,
                    ),
                    Text(
                      stName,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.normal),
                    ),
                    SizedBox(height: 5),
                    Text(
                      'Away',
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
