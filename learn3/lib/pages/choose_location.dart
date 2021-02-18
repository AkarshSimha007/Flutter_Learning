import 'package:flutter/material.dart';

class ChooseLocation extends StatefulWidget {
  @override
  _ChooseLocationState createState() => _ChooseLocationState();
}

class _ChooseLocationState extends State<ChooseLocation> {
  int counter = 0;

  void getData() async {
    //Simulating network request for DATA
    await Future.delayed(Duration(seconds: 5), () {
      print("Akarsh.H.Simha");
    });

    Future.delayed(Duration(seconds: 1), () {
      print("Coding Enthusiast");
    });
  }

  @override
  void initState() {
    super.initState();
    print("Init function Ran!");
    getData();
  }

  @override
  Widget build(BuildContext context) {
    print("Build function Ran!");
    return Scaffold(
      backgroundColor: Colors.blueGrey[100],
      appBar: AppBar(
        backgroundColor: Colors.blue[900],
        title: Text("Choose a Location"),
        centerTitle: true,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: RaisedButton(
          onPressed: () {
            setState(() {
              counter += 1;
            });
          },
          child: Text('$counter'),
        ),
      ),
    );
  }
}
