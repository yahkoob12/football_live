import 'package:flutter/material.dart';
import 'package:football_live/screen/home/home.dart';
import 'package:football_live/widgets/match/livematchbanner.dart';
import 'package:iconsax/iconsax.dart';
import 'package:get/get.dart';

class MatchScreen extends StatefulWidget {
  const MatchScreen({super.key});

  @override
  State<MatchScreen> createState() => _MatchScreenState();
}

class _MatchScreenState extends State<MatchScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.grey[200],
        leading: IconButton(
          onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => HomeScreen(),
                ));
          },
          style: IconButton.styleFrom(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            backgroundColor: Colors.white,
            shadowColor: Colors.black,
            elevation: 2,
          ),
          icon: Icon(Iconsax.arrow_square_left),
        ),
        centerTitle: true,
        title: Column(
          children: [
            Text(
              'Champions League',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              'GROUP STATE',
              style: TextStyle(fontSize: 12, color: Colors.grey),
            ),
          ],
        ),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 10),
            child: IconButton(
              onPressed: () {},
              style: IconButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                backgroundColor: Colors.white,
                shadowColor: Colors.black,
                elevation: 2,
              ),
              icon: Icon(Iconsax.more),
            ),
          )
        ],
      ),
      body: LiveMatchBanner(),
    );
  }
}

class Get {}
