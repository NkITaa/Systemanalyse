import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';

import '../Start/Start.dart';
import 'Welcome.dart';

class OnBoarding extends StatelessWidget {
  final marken;
  const OnBoarding({Key? key, this.marken}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
        valueListenable: Hive.box("settings").listenable(),
        builder: (context, dynamic box, child) =>
            box.get("welcome_shown", defaultValue: false)
                ? HomeScreen(
                    marken: marken,
                  )
                : Welcome1());
  }
}
