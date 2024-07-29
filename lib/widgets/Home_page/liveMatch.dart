import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:football_live/constants.dart';

class LiveMatch extends StatefulWidget {
  const LiveMatch({super.key});

  @override
  State<LiveMatch> createState() => _LiveMatchState();
}

class _LiveMatchState extends State<LiveMatch> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(20),
      child: Row(
        children: [
          Text(
            "Live Match",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 18,
              color: Colors.grey.shade800,
            ),
          ),
          Spacer(),
          Container(
            padding: EdgeInsets.all(5),
            decoration: BoxDecoration(
              color: FbackgroundColor,
              borderRadius: BorderRadius.circular(20),
              boxShadow: [
                BoxShadow(blurRadius: 20, color: Colors.grey.shade200)
              ],
            ),
            child: Row(
              children: [
                Image.asset(
                  'assets/images/image_1.png',
                  width: 40,
                  height: 40,
                ),
                SizedBox(width: 3),
                Text(
                  'Premier League',
                  style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                ),
                SizedBox(
                  width: 3,
                ),
                Icon(
                  CupertinoIcons.chevron_down,
                  size: 18,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
