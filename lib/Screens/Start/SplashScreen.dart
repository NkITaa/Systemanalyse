import 'dart:async';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  // ignore: must_call_super
  void initState() {
    Timer(
        Duration(seconds: 5),
        () => Navigator.of(context).pushNamedAndRemoveUntil(
            "OnBoarding", (Route<dynamic> route) => false));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    stops: [
                  0.1,
                  0.4,
                  0.7,
                  0.9
                ],
                    colors: [
                  Color(0xFF7EC3F8),
                  Color(0xFF3FC1C9),
                  Color(0xFF3FC1C9),
                  Color(0xFF3594DD),
                ])),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.3,
                    ),
                    CircleAvatar(
                      backgroundColor: Colors.transparent,
                      radius: 50.0,
                      child: Image.asset(
                        "Assets/Images/Zahnrad.gif",
                        height: MediaQuery.of(context).size.height * 0.1125,
                        width: MediaQuery.of(context).size.width * 0.1824,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 10.0),
                    ),
                    Text(
                      "AutoLab",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 24.0),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.width * 0.15,
                    ),
                    Text(
                      "Finde Schwachstellen deiner\nWunschautos",
                      softWrap: true,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18.0,
                          color: Colors.white),
                    )
                  ],
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
