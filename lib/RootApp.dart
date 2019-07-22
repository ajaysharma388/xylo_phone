import 'package:flutter/material.dart';

import './XyloPhone.dart';

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red[500],
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Text(
              'XYLO PHONE',
              style: TextStyle(
                letterSpacing: 3,
                fontFamily: 'Pacifico',
                fontSize: 35,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(20.0),
            child: Center(
              child: Image.asset('assets/images/xylophone.png'),
            ),
          ),
          RaisedButton(
            padding: EdgeInsets.all(10),
            elevation: 10,
            child: Text(
              '  Play Rhymes ♪♫  ',
              style: TextStyle(
                fontFamily: 'Pacifico',
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: Colors.red[500],
              ),
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => XyloPhone()),
              );
            },
          ),
        ],
      ),
    );
  }
}
