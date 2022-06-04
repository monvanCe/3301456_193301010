import 'package:flutter/material.dart';
import '../functions/inner-news.dart';

class Newscard extends State<StatefulWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Container(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Row(
              children: [
                Card(
                  child: InkWell(
                    splashColor: Colors.blue.withAlpha(30),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const news()),
                      );
                    },
                    child: SizedBox(
                      width: 177,
                      height: 100,
                      child: Image.asset(
                        'images/banner1.png',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Card(
                  child: InkWell(
                    splashColor: Colors.blue.withAlpha(30),
                    onTap: () {
                      debugPrint('Card tapped.');
                    },
                    child: const SizedBox(
                      width: 177,
                      height: 20,
                      child: Text('bas banaaağğh'),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
