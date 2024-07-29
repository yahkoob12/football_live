import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:football_live/widgets/Home_page/banner.dart';
import 'package:football_live/widgets/Home_page/comingmatch.dart';
import 'package:football_live/widgets/Home_page/liveMatch.dart';
import 'package:football_live/widgets/Home_page/matchsList.dart';
import 'package:iconsax/iconsax.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () {},
          icon: Icon(Iconsax.category),
        ),
        title: Row(
          children: [
            Spacer(),
            Text(
              'S',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            Icon(
              Icons.sports_soccer,
              color: Colors.grey.shade500,
            ),
            Text(
              'ccer',
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              'Kings',
              style: TextStyle(color: Colors.grey.shade500),
            ),
            Spacer(),
          ],
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Iconsax.notification),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            LiveMatch(),
            SizedBox(
              height: 240,
              child: ListView(
                padding: EdgeInsets.only(left: 20),
                shrinkWrap: true,
                primary: false,
                scrollDirection: Axis.horizontal,
                children: [
                  HomeBanner(
                    stdiumName: "St James Park",
                    week: 13,
                    ftlogo: 'assets/images/chelsea.png',
                    stlogo: 'assets/images/dominion.png',
                    ftName: 'Chelsea',
                    stName: 'Dominion City',
                    time: 83,
                    ftgoal: 0,
                    stgoal: 3,
                  ),
                  HomeBanner(
                      stdiumName: 'Wembley Stadium',
                      week: 6,
                      ftlogo: 'assets/images/argentina.png',
                      stlogo: 'assets/images/barcelona.png',
                      ftName: 'Argentina',
                      stName: 'Barcelona',
                      time: 69,
                      ftgoal: 2,
                      stgoal: 5),
                  HomeBanner(
                      stdiumName: 'Vivekananda Yuba Bharati Krirangan',
                      week: 9,
                      ftlogo: 'assets/images/gold eagle.png',
                      stlogo: 'assets/images/leicestercity.png',
                      ftName: 'Gold Eagle City',
                      stName: 'Leicester City',
                      time: 42,
                      ftgoal: 1,
                      stgoal: 2),
                  HomeBanner(
                      stdiumName: 'Santiago Bernabéu',
                      week: 3,
                      ftlogo: 'assets/images/liverpool.png',
                      stlogo: 'assets/images/manchester.png',
                      ftName: 'Liverpool',
                      stName: 'Manchester',
                      time: 79,
                      ftgoal: 2,
                      stgoal: 2),
                  HomeBanner(
                      stdiumName: 'Ato Boldon Stadium',
                      week: 24,
                      ftlogo: 'assets/images/russia.png',
                      stlogo: 'assets/images/Belgium.png',
                      ftName: 'Russia',
                      stName: 'Belgium',
                      time: 89,
                      ftgoal: 3,
                      stgoal: 2),
                ],
              ),
            ),
            ComingMatch(),
            MatchsList(
                ftname: 'Liverpool FC',
                stname: 'Argentina FC',
                ftlogo: 'assets/images/liverpool.png',
                stlogo: 'assets/images/argentina.png',
                time: '06:30',
                date: '30 DEC'),
            MatchsList(
                ftname: 'Barcelona FC',
                stname: 'Belgium FC',
                ftlogo: 'assets/images/barcelona.png',
                stlogo: 'assets/images/Belgium.png',
                time: '08:30',
                date: '38 Nov'),
            MatchsList(
                ftname: 'Chelsea FC',
                stname: 'Domonion FC',
                ftlogo: 'assets/images/chelsea.png',
                stlogo: 'assets/images/dominion.png',
                time: '07:30',
                date: '12 DEC'),
            MatchsList(
                ftname: 'GoldEagle FC',
                stname: 'Leicester FC',
                ftlogo: 'assets/images/gold eagle.png',
                stlogo: 'assets/images/leicestercity.png',
                time: '9:30',
                date: '8 DEC'),
            MatchsList(
                ftname: 'Manchester FC',
                stname: 'Russia FC',
                ftlogo: 'assets/images/manchester.png',
                stlogo: 'assets/images/russia.png',
                time: '06:30',
                date: '30 DEC'),
          ],
        ),
      ),
    );
  }
}
