import 'package:flutter/material.dart';

class news extends StatelessWidget {
  const news({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
      body: Container(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              children: [
                Card(
                  child: InkWell(
                    splashColor: Colors.blue.withAlpha(30),
                    child: const SizedBox(
                      width: 177,
                      height: 100,
                      child: Text('A card that can be tapped'),
                    ),
                  ),
                ),
                Card(
                  child: InkWell(
                    splashColor: Colors.blue.withAlpha(30),
                    child: const SizedBox(
                      width: 177,
                      height: 100,
                      child: Text('A card that can be tapped'),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
