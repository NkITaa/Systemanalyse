import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'Objects/Constants/constants.dart';
import 'Objects/JSON_Deserialization/Marke.dart';
import 'Screens/Start/SplashScreen.dart';
import 'Screens/OnBoarding/OnBoarding.dart';

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var marken = const [];

  Future loadDataList() async {
    String content = await rootBundle.loadString("Assets/AutoLabData.json");
    List collection = json.decode(content);
    List<Marke> _marken =
        collection.map((json) => Marke.fromJson(json)).toList();

    setState(() {
      marken = _marken;
    });
  }

  void initState() {
    loadDataList();
    setState(() {});
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          textTheme: Theme.of(context).textTheme.apply(
                bodyColor: kTextColor,
                fontFamily: 'Roboto',
              ),
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity),
      home: SplashScreen(),
      routes: {
        "OnBoarding": (context) {
          return OnBoarding(
            marken: marken,
          );
        },
      },
    );
  }
}
