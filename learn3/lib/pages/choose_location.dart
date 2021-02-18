import 'package:flutter/material.dart';

class ChooseLocation extends StatefulWidget {
  @override
  _ChooseLocationState createState() => _ChooseLocationState();
}

class _ChooseLocationState extends State<ChooseLocation> {
  int counter = 0;

  void getData() async {
    //Simulating network request for DATA
    String userName = await Future.delayed(Duration(seconds: 5), () {
      return "Akarsh.H.Simha";
    });

    String bio = await Future.delayed(Duration(seconds: 1), () {
      return "Coding Enthusiast";
    });

    print('$userName:$bio');
  }

  @override
  void initState() {
    super.initState();
    print("Init function Ran!");
    getData();
    print("Hey There!");
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
