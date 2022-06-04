import 'package:flutter/material.dart';

import '../screens/page1.dart';
import '../screens/page2.dart';
import '../screens/page3.dart';
import '../screens/page4.dart';
import '../screens/page5.dart';
import '../screens/page6.dart';
import 'color.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    void _incrementCounter() {}
    return MaterialApp(
      title: 'Bottom NavBar Demo',
      theme: ThemeData(
        primaryColor: Color.fromARGB(255, 196, 80, 80),
        splashColor: Colors.transparent,
        highlightColor: Colors.transparent,
        hoverColor: Colors.transparent,
      ),
      debugShowCheckedModeBanner: false,
      home: const HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int pageIndex = 0;

  final pages = [
    const Page1(),
    const Page2(),
    const Page3(),
    const Page4(),
    const Page5(),
    const Page6(),
  ];

  @override
  Widget build(BuildContext context) {
    void _incrementCounter() {}
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 211, 168, 168),
      appBar: AppBar(
        leading: Icon(
          Icons.newspaper,
          color: Theme.of(context).primaryColor,
        ),
        title: Text(
          "KERTU NEWS",
          style: TextStyle(
            color: Theme.of(context).primaryColor,
            fontSize: 25,
            fontWeight: FontWeight.w600,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
      ),
      body: pages[pageIndex],
      bottomNavigationBar: buildMyNavBar(context),
    );
  }

  Container buildMyNavBar(BuildContext context) {
    return Container(
      height: 60,
      decoration: BoxDecoration(
        color: Theme.of(context).primaryColor,
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              IconButton(
                enableFeedback: false,
                onPressed: () {
                  setState(() {
                    pageIndex = 0;
                  });
                },
                icon: pageIndex == 0
                    ? const Icon(
                        Icons.home_filled,
                        color: Colors.white,
                        size: 30,
                      )
                    : const Icon(
                        Icons.home_outlined,
                        color: Colors.white,
                        size: 30,
                      ),
              ),
              //Text('Ana Sayfa'),
            ],
          ),
          Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              IconButton(
                enableFeedback: false,
                onPressed: () {
                  setState(() {
                    pageIndex = 1;
                  });
                },
                icon: pageIndex == 1
                    ? const Icon(
                        Icons.whatshot,
                        color: Colors.white,
                        size: 30,
                      )
                    : const Icon(
                        Icons.whatshot_outlined,
                        color: Colors.white,
                        size: 30,
                      ),
              ),
              //Text('Son Dakika'),
            ],
          ),
          Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              IconButton(
                enableFeedback: false,
                onPressed: () {
                  setState(() {
                    pageIndex = 2;
                  });
                },
                icon: pageIndex == 2
                    ? const Icon(
                        Icons.monetization_on,
                        color: Colors.white,
                        size: 30,
                      )
                    : const Icon(
                        Icons.monetization_on_outlined,
                        color: Colors.white,
                        size: 30,
                      ),
              ),
              //Text('Ekonomi'),
            ],
          ),
          Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              IconButton(
                enableFeedback: false,
                onPressed: () {
                  setState(() {
                    pageIndex = 3;
                  });
                },
                icon: pageIndex == 3
                    ? const Icon(
                        Icons.sports_basketball,
                        color: Colors.white,
                        size: 30,
                      )
                    : const Icon(
                        Icons.sports_basketball_outlined,
                        color: Colors.white,
                        size: 30,
                      ),
              ),
              //Text('Spor'),
            ],
          ),
          Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              IconButton(
                enableFeedback: false,
                onPressed: () {
                  setState(() {
                    pageIndex = 4;
                  });
                },
                icon: pageIndex == 4
                    ? const Icon(
                        Icons.health_and_safety,
                        color: Colors.white,
                        size: 30,
                      )
                    : const Icon(
                        Icons.health_and_safety_outlined,
                        color: Colors.white,
                        size: 30,
                      ),
              ),
              //Text('Sağlık'),
            ],
          ),
          Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              IconButton(
                enableFeedback: false,
                onPressed: () {
                  setState(() {
                    pageIndex = 5;
                  });
                },
                icon: pageIndex == 5
                    ? const Icon(
                        Icons.settings,
                        color: Colors.white,
                        size: 30,
                      )
                    : const Icon(
                        Icons.settings_outlined,
                        color: Colors.white,
                        size: 30,
                      ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
