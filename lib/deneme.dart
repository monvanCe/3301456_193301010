import 'package:flutter/material.dart';

class MyStatefulWidget extends StatefulWidget {
  @override
  _MyStatefulWidgetState createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  String navBarTitle = "Widget Example";

  void actionButton(String text) {
    setState(() {
      navBarTitle = text;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(navBarTitle),
      ),
      body: Center(
        child: RaisedButton(
          onPressed: () {
            actionButton("Raised Button Action");
          },
          child: Text("Raised Button"),
          color: Colors.amber,
        ),
      ),
    );
  }
}
