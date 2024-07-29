import 'package:flutter/material.dart';
import 'package:football_live/constants.dart';

class ComingMatch extends StatelessWidget {
  const ComingMatch({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(20),
      child: Row(
        children: [
          Text(
            'Up-Coming Matches',
            style: TextStyle(
              fontSize: 18,
              color: Colors.grey.shade500,
              fontWeight: FontWeight.bold,
            ),
          ),
          Spacer(),
          TextButton(
            onPressed: () {},
            child: Text('See all'),
            style: TextButton.styleFrom(foregroundColor: FprimaryColor),
          ),
        ],
      ),
    );
  }
}
