import 'package:flutter/material.dart';
import 'modal.dart';

void main() {
  runApp(reusable());
}

class reusable extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Reusable Widgets",
      home: Home(),
    );
  }
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          RaisedButton(
            onPressed: () {
              reusableModal(context);
            },
            child: Text('Reusable Modal'),
          ),
        ],
      ),
    );
  }
}
